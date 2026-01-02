<?php

namespace App\Orchid\Screens\Actualite;

use Orchid\Screen\Screen;

use App\Models\Actualite;
use App\Models\Pays;
use App\Models\Langue;

use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Quill;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;

class EditScreen extends Screen
{
    /**
     * @var Actualite
     */
    public $actualite;

    /**
     * Query data.
     *
     * @param Actualite $actualite
     *
     * @return array
     */
    public function query(Actualite $actualite): array
    {
        return [
            'actualite' => $actualite
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->actualite->exists ? 'Modification de l\'actualité' : 'Créer une actualité';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Toutes les actualités enregistrées";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer une actualité')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->actualite->exists),

            Button::make('Modifier l\'actualité')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->actualite->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->actualite->exists),
        ];
    }

    /**
     * The screen's layout elements.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
        // Récupérer les pays via l'API Supabase et créer un tableau [id => nom]
        $paysModel = new Pays();
        $paysList = collect($paysModel->all())->pluck('name', 'id')->toArray();

        // Récupérer les langue via l'API Supabase et créer un tableau [id => nom]
        $langueModel = new Langue();
        $langueList = collect($langueModel->all())->pluck('name', 'id')->toArray();

        return [
            Layout::rows([
                Input::make('actualite.titre')
                    ->title('Titre')
                    ->required()
                    ->placeholder('Saisir le titre'),
                    //->help('Spécifiez un titre pour cette actualité.')

                TextArea::make('actualite.resume')
                    ->title('Résumé')
                    ->placeholder('Saisir le résumé'),
                    //->help('Spécifiez un résumé pour cette actualité.')

                DateTimer::make('actualite.dateactualite')
                    ->title('Date de l\'actualité')
                    ->format('Y-m-d'),

                /*TextArea::make('actualite.description')
                    ->title('Description')
                    ->placeholder('Saisir la description'),
                    //->help('Spécifiez une description pour cette actualité')*/

                Quill::make('actualite.description')
                    ->title('Description')
                    //->popover('Saisir la description')
                    ->placeholder('Saisir la description'),

                Select::make('actualite.actualitetype_id')
                    ->title('Type d\'actualité')
                    ->placeholder('Choisir le type')
                    //->help('Spécifiez un type d\'actualité.')
                    ->fromModel(\App\Models\Actualitetype::class, 'titre')
                    ->empty('Choisir', 0),

                Input::make('vignette')
                    ->type('file')
                    ->title('Vignette (image)')// ou PDF
                    ->accept('image/*')//,.pdf
                    ->help('Uploader un fichier image (1 seul fichier).'),// ou PDF

                Select::make('actualite.langue_id')
                    ->title('Langue')
                    ->placeholder('Choisir la langue')
                    ->options($langueList)
                    ->empty('Choisir', 0),

                Select::make('actualite.pays_id')
                    ->title('Pays')
                    ->placeholder('Choisir le pays')
                    ->options($paysList)
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
    $data = $request->get('actualite');

    /*if ($request->hasFile('vignette')) {
        $file = $request->file('vignette');

        // Stocker dans /storage/app/public/actualites/YYYY/MM/DD
        $path = $file->storeAs(
            'actualites/' . date('Y/m/d'),
            uniqid() . '_' . $file->getClientOriginalName(),
            'public'
        );

        // Enregistrer le chemin dans la base (accessible via asset())
        $data['vignette'] = 'storage/' . $path;
    }*/


if ($request->hasFile('vignette')) {
    $file = $request->file('vignette');

    $originalName = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
    $extension = $file->getClientOriginalExtension();

    // 🔹 Nettoyage du nom pour Supabase Storage
    $safeName = \App\Helpers\FileHelper::sanitizeFileName($originalName);

    // Chemin final dans le bucket
    $path = 'actualites/' . time() . '_' . $safeName . '.' . $extension;

    $storage = new \App\Services\SupabaseStorageService();
    $storage->upload(
        $path,
        file_get_contents($file->getRealPath()),
        $file->getMimeType()
    );

    // Stocke le chemin dans la base
    $data['vignette'] = $path;
}


    $this->actualite->fill($data)->save();

    Alert::info('Actualité enregistrée avec succès.');

    return redirect()->route('platform.actualite.list');
}

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->actualite->delete();

        Alert::info('Vous avez supprimé l\'actualité avec succès.');

        return redirect()->route('platform.actualite.list');
    }

}
