<?php

namespace App\Orchid\Screens\Piece;

use Orchid\Screen\Screen;

use App\Models\Piece;
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
     * @var Piece
     */
    public $piece;

    /**
     * Query data.
     *
     * @param Piece $piece
     *
     * @return array
     */
    public function query(Piece $piece): array
    {
        return [
            'piece' => $piece
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->piece->exists ? 'Modification du piece' : 'Créer un piece';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Tous les pieces enregistrés";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer un piece')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->piece->exists),

            Button::make('Modifier le piece')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->piece->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->piece->exists),
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
                Input::make('piece.titre')
                    ->title('Titre')
                    ->required()
                    ->placeholder('Saisir le titre'),

                DateTimer::make('piece.datepiece')
                    ->title('Date du piece')
                    ->format('Y-m-d'),

                Select::make('piece.piecetype_id')
                    ->title('Type du piece')
                    ->placeholder('Choisir le type')
                    ->fromModel(\App\Models\Piecetype::class, 'titre')
                    ->empty('Choisir', 0),

                Input::make('fichier')
                    ->type('file')
                    ->title('Fichier (PDF)')// ou image
                    ->accept('.pdf')//,image/*
                    ->help('Uploader un fichier PDF (1 seul fichier).'),// ou image

                Select::make('piece.entreprise_id')
                    ->title('Entreprise')
                    ->placeholder('Choisir l\'entreprise')
                    //->help('Spécifiez un entreprise.')
                    ->fromModel(\App\Models\Entreprise::class, 'nom')
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
    $data = $request->get('piece');

    /*if ($request->hasFile('fichier')) {
        $file = $request->file('fichier');

        // Stocker dans /storage/app/public/pieces/YYYY/MM/DD
        $path = $file->storeAs(
            'pieces/' . date('Y/m/d'),
            uniqid() . '_' . $file->getClientOriginalName(),
            'public'
        );

        // Enregistrer le chemin dans la base (accessible via asset())
        $data['fichier'] = 'storage/' . $path;
    }*/

        

if ($request->hasFile('fichier')) {
    $file = $request->file('fichier');

    // 🔹 Nom sans extension
    $originalName = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
    $extension = $file->getClientOriginalExtension();

    // 🔹 Nettoyage UTF-8 / Supabase safe
    $safeName = \App\Helpers\FileHelper::sanitizeFileName($originalName);

    // 🔹 Dossier pieces/YYYY/MM/DD
    $directory = 'pieces/' . date('Y/m/d');

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
    $data['fichier'] = $path;
}


    $this->piece->fill($data)->save();

    Alert::info('Piece enregistré avec succès.');

    return redirect()->route('platform.piece.list');
}

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->piece->delete();

        Alert::info('Vous avez supprimé le piece avec succès.');

        return redirect()->route('platform.piece.list');
    }

}
