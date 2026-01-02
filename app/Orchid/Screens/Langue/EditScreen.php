<?php

namespace App\Orchid\Screens\Langue;

use Orchid\Screen\Screen;

use App\Models\Langue;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;

class EditScreen extends Screen
{
    /**
     * @var Langue
     */
    public $langue;

    /**
     * Query data.
     *
     * @param Langue $langue
     *
     * @return array
     */
    public function query(Langue $langue): array
    {
        return [
            'langue' => $langue
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->langue->exists ? 'Modification d\'une langue' : 'Créer une nouvelle langue';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Tous les langues enregistrées";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer une langue')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->langue->exists),

            Button::make('Modifier la langue')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->langue->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->langue->exists),
        ];
    }

    /**
     * The screen's layout elements.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
        return [
            Layout::rows([
                Input::make('langue.nom')
                    ->title('Nom')
                    ->placeholder('Saisir le nom'),
                    //->help('Spécifiez un nom pour ce langue.')

                Input::make('langue.code')
                    ->title('Code')
                    ->placeholder('Saisir le code'),
                    //->help('Spécifiez un code pour ce langue.')

                Input::make('langue.indicatif')
                    ->title('Indicatif')
                    ->placeholder('Saisir l\'indicatif'),
                    //->help('Spécifiez un indicatif pour ce langue')

                Input::make('langue.monnaie')
                    ->title('Monnaie')
                    ->placeholder('Saisir la monnaie'),
                    //->help('Spécifiez une monnaie pour ce langue.')

                Input::make('drapeau')
                    ->type('file')
                    ->title('Drapeau (image)')// ou PDF
                    ->accept('image/*')//,.pdf
                    ->help('Uploader un fichier image (1 seul fichier).'),// ou PDF

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
    $data = $request->get('langue');

    /*if ($request->hasFile('drapeau')) {
        $file = $request->file('drapeau');

        // Stocker dans /storage/app/public/drapeaux/YYYY/MM/DD
        $path = $file->storeAs(
            'drapeaux/' . date('Y/m/d'),
            uniqid() . '_' . $file->getClientOriginalName(),
            'public'
        );

        // Enregistrer le chemin dans la base (accessible via asset())
        $data['drapeau'] = 'storage/' . $path;
    }*/

        

if ($request->hasFile('drapeau')) {
    $file = $request->file('drapeau');

    // 🔹 Nom sans extension
    $originalName = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
    $extension = $file->getClientOriginalExtension();

    // 🔹 Nettoyage UTF-8 / Supabase safe
    $safeName = \App\Helpers\FileHelper::sanitizeFileName($originalName);

    // 🔹 Dossier drapeaux/YYYY/MM/DD
    $directory = 'drapeaux/' . date('Y/m/d');

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
    $data['drapeau'] = $path;
}


    $this->langue->fill($data)->save();

    Alert::info('Langue enregistré avec succès.');

    return redirect()->route('platform.langue.list');
}

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->langue->delete();

        Alert::info('Vous avez supprimé le langue avec succès.');

        return redirect()->route('platform.langue.list');
    }

}
