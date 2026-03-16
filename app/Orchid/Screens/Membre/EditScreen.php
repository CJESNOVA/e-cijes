<?php

namespace App\Orchid\Screens\Membre;

use Orchid\Screen\Screen;

use App\Models\Membre;
use App\Models\Pays;

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
     * @var Membre
     */
    public $membre;

    /**
     * Query data.
     *
     * @param Membre $membre
     *
     * @return array
     */
    public function query(Membre $membre): array
    {
        return [
            'membre' => $membre
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->membre->exists ? 'Modification du membre' : 'Créer un membre';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Tous les membres enregistrés";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer un membre')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->membre->exists),

            Button::make('Modifier le membre')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->membre->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->membre->exists),
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

        return [
            Layout::rows([
                Input::make('membre.numero_identifiant')
                    ->title('Numéro d\'identifiant')
                    ->readonly()
                    ->help('Numéro d\'identifiant unique généré automatiquement.'),

                Input::make('membre.nom')
                    ->title('Nom')
                    ->required()
                    ->placeholder('Saisir le nom'),
                    //->help('Spécifiez un nom pour cette membre.')

                Input::make('membre.prenom')
                    ->title('Prénom(s)')
                    ->placeholder('Saisir le prénom(s)'),
                    //->help('Spécifiez un prénom(s) pour cette membre.')

                Input::make('membre.user_id')
                    ->title('User')
                    ->placeholder('Saisir le user_id'),

                Input::make('membre.email')
                    ->title('Email')
                    ->placeholder('Saisir l\'email'),
                    //->help('Spécifiez un l\'email pour cette membre.')

                Select::make('membre.membretype_id')
                    ->title('Type du membre')
                    ->placeholder('Choisir le type')
                    //->help('Spécifiez un type d\'membre.')
                    ->fromModel(\App\Models\Membretype::class, 'titre')
                    ->empty('Choisir', 0),

                Input::make('vignette')
                    ->type('file')
                    ->title('Vignette (image)')// ou PDF
                    ->accept('image/*')//,.pdf
                    ->help('Uploader un fichier image (1 seul fichier).'),// ou PDF

                Select::make('membre.membrestatut_id')
                    ->title('Statut du membre')
                    ->placeholder('Choisir le statut')
                    //->help('Spécifiez une membrestatut.')
                    ->fromModel(\App\Models\Membrestatut::class, 'titre')
                    ->empty('Choisir', 0),

                Select::make('membre.pays_id')
                    ->title('Pays')
                    ->placeholder('Choisir le pays')
                    ->options($paysList)
                    ->empty('Choisir', 0),

                Input::make('membre.telephone')
                    ->title('Téléphone')
                    ->placeholder('Saisir le téléphone'),
                    //->help('Spécifiez un téléphone pour cette membre.')

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
    $data = $request->get('membre');

    /*if ($request->hasFile('vignette')) {
        $file = $request->file('vignette');

        // Stocker dans /storage/app/public/membres/YYYY/MM/DD
        $path = $file->storeAs(
            'membres/' . date('Y/m/d'),
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

    // 🔹 Dossier membres/YYYY/MM/DD
    $directory = 'membres/' . date('Y/m/d');

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

    // 🔹 Sauvegarde en base (chemin relatif)
    $data['vignette'] = $path;
}


    $this->membre->fill($data)->save();

    Alert::info('Membre enregistré avec succès.');

    return redirect()->route('platform.membre.list');
}

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->membre->delete();

        Alert::info('Vous avez supprimé le membre avec succès.');

        return redirect()->route('platform.membre.list');
    }

}
