<?php

namespace App\Orchid\Screens\Document;

use Orchid\Screen\Screen;

use App\Models\Document;
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
     * @var Document
     */
    public $document;

    /**
     * Query data.
     *
     * @param Document $document
     *
     * @return array
     */
    public function query(Document $document): array
    {
        return [
            'document' => $document
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->document->exists ? 'Modification du document' : 'Créer un document';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Tous les documents enregistrés";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer un document')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->document->exists),

            Button::make('Modifier le document')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->document->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->document->exists),
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
                Input::make('document.titre')
                    ->title('Titre')
                    ->required()
                    ->placeholder('Saisir le titre'),

                DateTimer::make('document.datedocument')
                    ->title('Date du document')
                    ->format('Y-m-d'),

                Select::make('document.documenttype_id')
                    ->title('Type du document')
                    ->placeholder('Choisir le type')
                    ->fromModel(\App\Models\Documenttype::class, 'titre')
                    ->empty('Choisir', 0),

                Input::make('fichier')
                    ->type('file')
                    ->title('Fichier (PDF)')// ou image
                    ->accept('.pdf')//,image/*
                    ->help('Uploader un fichier PDF (1 seul fichier).'),// ou image

                Select::make('document.membre_id')
                    ->title('Membre')
                    ->placeholder('Choisir le membre')
                    //->help('Spécifiez un membre.')
                    ->options(
                        \App\Models\Membre::all()
                            ->mapWithKeys(function ($membre) {
                                return [$membre->id => trim("{$membre->prenom} {$membre->nom}")];
                            })
                            ->toArray())
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
    $data = $request->get('document');

    /*if ($request->hasFile('fichier')) {
        $file = $request->file('fichier');

        // Stocker dans /storage/app/public/documents/YYYY/MM/DD
        $path = $file->storeAs(
            'documents/' . date('Y/m/d'),
            uniqid() . '_' . $file->getClientOriginalName(),
            'public'
        );

        // Enregistrer le chemin dans la base (accessible via asset())
        $data['fichier'] = 'storage/' . $path;
    }*/
        

if ($request->hasFile('vignette')) {
    $file = $request->file('vignette');

    // Nom de base + extension
    $originalName = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
    $extension = $file->getClientOriginalExtension();

    // 🔹 On nettoie le nom pour Supabase
    $safeName = \App\Helpers\FileHelper::sanitizeFileName($originalName);

    // Chemin final dans le bucket
    $path = 'documents/' . time() . '_' . $safeName . '.' . $extension;

    $storage = new \App\Services\SupabaseStorageService();

    // Upload du fichier
    $storage->upload(
        $path,
        file_get_contents($file->getRealPath()),
        $file->getMimeType()
    );

    // Stockage du chemin dans la base
    $data['vignette'] = $path;
}



    $this->document->fill($data)->save();

    Alert::info('Document enregistré avec succès.');

    return redirect()->route('platform.document.list');
}

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->document->delete();

        Alert::info('Vous avez supprimé le document avec succès.');

        return redirect()->route('platform.document.list');
    }

}
