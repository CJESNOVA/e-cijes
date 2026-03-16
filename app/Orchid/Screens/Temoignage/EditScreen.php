<?php

namespace App\Orchid\Screens\Temoignage;

use Orchid\Screen\Screen;

use App\Models\Temoignage;
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
     * @var Temoignage
     */
    public $temoignage;

    /**
     * Query data.
     *
     * @param Temoignage $temoignage
     *
     * @return array
     */
    public function query(Temoignage $temoignage): array
    {
        return [
            'temoignage' => $temoignage
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->temoignage->exists ? 'Modification du témoignage' : 'Créer un témoignage';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Tous les témoignages enregistrés";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer un témoignage')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->temoignage->exists),

            Button::make('Modifier le témoignage')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->temoignage->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->temoignage->exists),
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
                Input::make('temoignage.nom')
                    ->title('Nom et prénom(s)')
                    ->required()
                    ->placeholder('Saisir le nom et prénom(s)'),
                    //->help('Spécifiez un nom et prénom(s) pour cette temoignage.')

                Input::make('temoignage.profil')
                    ->title('Profil')
                    ->placeholder('Saisir le profil'),
                    //->help('Spécifiez un profil pour cette temoignage.')

                TextArea::make('temoignage.commentaire')
                    ->title('Témoignage')
                    ->placeholder('Saisir le témoignage'),
                    //->help('Spécifiez un commentaire pour cette temoignage')

                Input::make('vignette')
                    ->type('file')
                    ->title('Vignette (image)')// ou PDF
                    ->accept('image/*')//,.pdf
                    ->help('Uploader un fichier image (1 seul fichier).'),// ou PDF

                Select::make('temoignage.langue_id')
                    ->title('Langue')
                    ->placeholder('Choisir la langue')
                    ->options($langueList)
                    ->empty('Choisir', 0),


                Select::make('temoignage.pays_id')
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
    $data = $request->get('temoignage');

    /*if ($request->hasFile('vignette')) {
        $file = $request->file('vignette');

        // Stocker dans /storage/app/public/temoignages/YYYY/MM/DD
        $path = $file->storeAs(
            'temoignages/' . date('Y/m/d'),
            uniqid() . '_' . $file->getClientOriginalName(),
            'public'
        );

        // Enregistrer le chemin dans la base (accessible via asset())
        $data['vignette'] = 'storage/' . $path;
    }*/

        

if ($request->hasFile('vignette')) {
    $file = $request->file('vignette');

    // 🔹 Nom du fichier sans extension
    $originalName = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
    $extension = $file->getClientOriginalExtension();

    // 🔹 Nettoyage UTF-8 / caractères spéciaux
    $safeName = \App\Helpers\FileHelper::sanitizeFileName($originalName);

    // 🔹 Dossier temoignages/YYYY/MM/DD
    $directory = 'temoignages/' . date('Y/m/d');

    // 🔹 Nom final unique
    $filename = uniqid() . '_' . $safeName . '.' . $extension;

    // 🔹 Chemin complet
    $path = $directory . '/' . $filename;

    // 🔹 Upload vers Supabase Storage
    $storage = new \App\Services\SupabaseStorageService();
    $storage->upload(
        $path,
        file_get_contents($file->getRealPath()),
        $file->getMimeType()
    );

    // 🔹 Sauvegarde en base (chemin relatif Supabase)
    $data['vignette'] = $path;
}


    $this->temoignage->fill($data)->save();

    Alert::info('Témoignage enregistré avec succès.');

    return redirect()->route('platform.temoignage.list');
}

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->temoignage->delete();

        Alert::info('Vous avez supprimé le témoignage avec succès.');

        return redirect()->route('platform.temoignage.list');
    }

}
