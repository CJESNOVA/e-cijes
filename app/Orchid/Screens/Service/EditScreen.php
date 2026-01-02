<?php

namespace App\Orchid\Screens\Service;

use Orchid\Screen\Screen;

use App\Models\Service;
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
     * @var Service
     */
    public $service;

    /**
     * Query data.
     *
     * @param Service $service
     *
     * @return array
     */
    public function query(Service $service): array
    {
        return [
            'service' => $service
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->service->exists ? 'Modification du service' : 'Créer un service';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Tous les services enregistrés";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer un service')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->service->exists),

            Button::make('Modifier le service')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->service->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->service->exists),
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
                Input::make('service.titre')
                    ->title('Titre')
                    ->required()
                    ->placeholder('Saisir le titre'),
                    //->help('Spécifiez un titre pour cette service.')

                TextArea::make('service.resume')
                    ->title('Résumé')
                    ->placeholder('Saisir le résumé'),
                    //->help('Spécifiez un résumé pour cette service.')

                /*TextArea::make('service.description')
                    ->title('Description')
                    ->placeholder('Saisir la description'),
                    //->help('Spécifiez une description pour cette service')*/

                Quill::make('service.description')
                    ->title('Description')
                    //->popover('Saisir la description')
                    ->placeholder('Saisir la description'),

                Input::make('vignette')
                    ->type('file')
                    ->title('Vignette (image)')// ou PDF
                    ->accept('image/*')//,.pdf
                    ->help('Uploader un fichier image (1 seul fichier).'),// ou PDF

                Select::make('service.langue_id')
                    ->title('Langue')
                    ->placeholder('Choisir la langue')
                    ->options($langueList)
                    ->empty('Choisir', 0),


                Select::make('service.pays_id')
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
    $data = $request->get('service');

    /*if ($request->hasFile('vignette')) {
        $file = $request->file('vignette');

        // Stocker dans /storage/app/public/services/YYYY/MM/DD
        $path = $file->storeAs(
            'services/' . date('Y/m/d'),
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

    // 🔹 Dossier services/YYYY/MM/DD
    $directory = 'services/' . date('Y/m/d');

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


    $this->service->fill($data)->save();

    Alert::info('Service enregistré avec succès.');

    return redirect()->route('platform.service.list');
}

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->service->delete();

        Alert::info('Vous avez supprimé le service avec succès.');

        return redirect()->route('platform.service.list');
    }

}
