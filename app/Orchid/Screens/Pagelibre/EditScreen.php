<?php

namespace App\Orchid\Screens\Pagelibre;

use Orchid\Screen\Screen;

use App\Models\Pagelibre;
use App\Models\Langue;

use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Quill;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;

class EditScreen extends Screen
{
    /**
     * @var Pagelibre
     */
    public $pagelibre;

    /**
     * Query data.
     *
     * @param Pagelibre $pagelibre
     *
     * @return array
     */
    public function query(Pagelibre $pagelibre): array
    {
        return [
            'pagelibre' => $pagelibre
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->pagelibre->exists ? 'Modification de la page de présentation' : 'Créer une nouvelle page de présentation';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Toutes les pages de présentation enregistrées";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer une page de présentation')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->pagelibre->exists),

            Button::make('Modifier la page de présentation')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->pagelibre->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->pagelibre->exists),
        ];
    }

    /**
     * The screen's layout elements.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
        // Récupérer les langue via l'API Supabase et créer un tableau [id => nom]
        $langueModel = new Langue();
        $langueList = collect($langueModel->all())->pluck('name', 'id')->toArray();

        return [
            Layout::rows([
                Input::make('pagelibre.titre')
                    ->title('Titre')
                    ->required()
                    ->placeholder('Saisir le titre'),
                    //->help('Spécifiez un titre pour cette page de présentation.')

                TextArea::make('pagelibre.resume')
                    ->title('Résumé')
                    ->placeholder('Saisir le résumé'),
                    //->help('Spécifiez un résumé pour cette page de présentation.')

                /*TextArea::make('pagelibre.description')
                    ->title('Description')
                    ->placeholder('Saisir la description'),
                    //->help('Spécifiez une description pour cette page de présentation')*/

                Quill::make('pagelibre.description')
                    ->title('Description')
                    //->popover('Saisir la description')
                    ->placeholder('Saisir la description'),

                Select::make('pagelibre.parent')
                    ->title('Page parent')
                    ->placeholder('Choisir la page de présentation')
                    //->help('Spécifiez une page de présentation.')
                    ->fromModel(\App\Models\Pagelibre::class, 'titre')
                    ->empty('Choisir', 0),

                Input::make('vignette')
                    ->type('file')
                    ->title('Vignette (image)')// ou PDF
                    ->accept('image/*')//,.pdf
                    ->help('Uploader un fichier image (1 seul fichier).'),// ou PDF

                Select::make('pagelibre.langue_id')
                    ->title('Langue')
                    ->placeholder('Choisir la langue')
                    ->options($langueList)
                    ->empty('Choisir', 0),


            ])
        ];
    }
    

    /**
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Request $request)
{
    $data = $request->get('pagelibre');

    /*if ($request->hasFile('vignette')) {
        $file = $request->file('vignette');

        // Stocker dans /storage/app/public/pagelibres/YYYY/MM/DD
        $path = $file->storeAs(
            'pagelibres/' . date('Y/m/d'),
            uniqid() . '_' . $file->getClientOriginalName(),
            'public'
        );

        // Enregistrer le chemin dans la base (accessible via asset())
        $data['vignette'] = 'storage/' . $path;
    }*/

        

if ($request->hasFile('vignette')) {
    $file = $request->file('vignette');

    // 🔹 Nom sans extension
    $originalName = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
    $extension = $file->getClientOriginalExtension();

    // 🔹 Nettoyage UTF-8 / Supabase safe
    $safeName = \App\Helpers\FileHelper::sanitizeFileName($originalName);

    // 🔹 Dossier pagelibres/YYYY/MM/DD
    $directory = 'pagelibres/' . date('Y/m/d');

    // 🔹 Nom unique
    $filename = uniqid() . '_' . $safeName . '.' . $extension;

    // 🔹 Chemin final
    $path = $directory . '/' . $filename;

    // 🔹 Upload vers Supabase
    $storage = new \App\Services\SupabaseStorageService();
    $storage->upload(
        $path,
        file_get_contents($file->getRealPath()),
        $file->getMimeType()
    );

    // 🔹 Sauvegarde en base (chemin relatif Supabase)
    $data['vignette'] = $path;
}


    $this->pagelibre->fill($data)->save();

    Alert::info('Page de présentation enregistrée avec succès.');

    return redirect()->route('platform.pagelibre.list');
}

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->pagelibre->delete();

        Alert::info('Vous avez supprimé le page de présentation avec succès.');

        return redirect()->route('platform.pagelibre.list');
    }

}
