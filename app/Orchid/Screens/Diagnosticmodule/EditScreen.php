<?php

namespace App\Orchid\Screens\Diagnosticmodule;

use Orchid\Screen\Screen;

use App\Models\Diagnosticmodule;
use App\Models\Diagnosticmoduletype;
use App\Models\Diagnosticmodulecategory;
use App\Models\Entrepriseprofil;
use App\Models\Pays;
use App\Models\Langue;

use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Quill;
use Orchid\Screen\Fields\CheckBox;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;

class EditScreen extends Screen
{
    /**
     * @var Diagnosticmodule
     */
    public $diagnosticmodule;

    /**
     * Query data.
     *
     * @param Diagnosticmodule $diagnosticmodule
     *
     * @return array
     */
    public function query(Diagnosticmodule $diagnosticmodule): array
    {
        return [
            'diagnosticmodule' => $diagnosticmodule,
            'diagnosticmoduletypes' => Diagnosticmoduletype::where('etat', 1)->pluck('titre', 'id'),
            'diagnosticmodulecategories' => Diagnosticmodulecategory::where('etat', 1)->pluck('titre', 'id'),
            'entrepriseprofils' => Entrepriseprofil::where('etat', 1)->pluck('titre', 'id'),
            'modules' => Diagnosticmodule::where('etat', 1)
                ->where('id', '!=', $diagnosticmodule->id ?? 0)
                ->pluck('titre', 'id'),
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->diagnosticmodule->exists ? 'Modification du module de diagnostic' : 'Créer un module de diagnostic';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Tous les modules des diagnostics enregistrés";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer un module de diagnostic')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->diagnosticmodule->exists),

            Button::make('Modifier le module de diagnostic')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->diagnosticmodule->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->diagnosticmodule->exists),
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
                Input::make('diagnosticmodule.titre')
                    ->title('Titre')
                    ->required()
                    ->placeholder('Saisir le titre'),

                Input::make('diagnosticmodule.position')
                    ->title('Position')
                    ->type('number')
                    ->placeholder('Saisir la position')
                    ->required(),

                Quill::make('diagnosticmodule.description')
                    ->title('Description')
                    ->placeholder('Saisir la description'),

                Select::make('diagnosticmodule.diagnosticmoduletype_id')
                    ->title('Type')
                    ->placeholder('Choisir le type')
                    ->fromModel(Diagnosticmoduletype::class, 'titre')
                    ->empty('Choisir', 0)
                    ->required(),

                Select::make('diagnosticmodule.diagnosticmodulecategory_id')
                    ->title('Catégorie')
                    ->placeholder('Choisir la catégorie')
                    ->fromModel(Diagnosticmodulecategory::class, 'titre')
                    ->empty('Choisir', 0)
                    ->help('Catégorie du module de diagnostic'),

                Select::make('diagnosticmodule.entrepriseprofil_id')
                    ->title('Profil entreprise')
                    ->placeholder('Choisir le profil')
                    ->fromModel(Entrepriseprofil::class, 'titre')
                    ->empty('Tous les profils', '0')
                    ->help('Laissez vide si applicable à tous les profils'),

                Select::make('diagnosticmodule.parent')
                    ->title('Module parent')
                    ->placeholder('Choisir le module')
                    ->fromModel(Diagnosticmodule::class, 'titre')
                    ->empty('Aucun', '0')
                    ->help('Module parent pour la hiérarchie'),

                Select::make('diagnosticmodule.langue_id')
                    ->title('Langue')
                    ->placeholder('Choisir la langue')
                    ->fromModel(Langue::class, 'name')
                    ->empty('Choisir', 0)
                    ->required(),

                Select::make('diagnosticmodule.pays_id')
                    ->title('Pays')
                    ->placeholder('Choisir le pays')
                    ->fromModel(Pays::class, 'name')
                    ->empty('Choisir', 0)
                    ->required(),

                Input::make('vignette')
                    ->type('file')
                    ->title('Vignette (image)')
                    ->accept('image/*')
                    ->help('Uploader un fichier image (1 seul fichier).'),

                CheckBox::make('diagnosticmodule.est_bloquant')
                    ->title('Module bloquant')
                    ->help('Si coché, ce module bloquera la progression du diagnostic')
                    ->sendTrueOrFalse(),
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
    $data = $request->get('diagnosticmodule');


    /*if ($request->hasFile('vignette')) {
        $file = $request->file('vignette');

        // Stocker dans /storage/app/public/diagnosticmodules/YYYY/MM/DD
        $path = $file->storeAs(
            'diagnosticmodules/' . date('Y/m/d'),
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
    $path = 'diagnosticmodules/' . time() . '_' . $safeName . '.' . $extension;

    $storage = new \App\Services\SupabaseStorageService();
    $storage->upload(
        $path,
        file_get_contents($file->getRealPath()),
        $file->getMimeType()
    );

    // Stocke le chemin dans la base
    $data['vignette'] = $path;
}


    $this->diagnosticmodule->fill($data)->save();

    Alert::info('Module de diagnostic enregistré avec succès.');

    return redirect()->route('platform.diagnosticmodule.list');
}

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->diagnosticmodule->delete();

        Alert::info('Vous avez supprimé le module de diagnostic avec succès.');

        return redirect()->route('platform.diagnosticmodule.list');
    }

}
