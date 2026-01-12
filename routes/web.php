<?php

use App\Http\Controllers\IndexController;
use App\Http\Controllers\PagelibreController;
use App\Http\Controllers\ActualiteController;
use App\Http\Controllers\CommentaireController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\ChiffreController;
use App\Http\Controllers\DocumentController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\PartenaireController;
use App\Http\Controllers\TemoignageController;
use App\Http\Controllers\FaqController;
use App\Http\Controllers\RessourcetypeoffretypeController;

use Illuminate\Support\Facades\Route;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;

use App\Http\Controllers\MediaController;


/*Route::get('/language/{lang}', function ($lang) {
    if (in_array($lang, ['en', 'fr'])) {
        Session::put('locale', $lang);
    }
    return redirect()->back();
});*/

Route::get('/', function () {
    return view('welcome');
});

/*Route::get('/', function () {
    dd(App::getLocale());
});*/



//index
Route::get('/index', [IndexController::class, 'index'])->name('index.index');
Route::get('/', [IndexController::class, 'index'])->name('index.index');
Route::get('/recherche', [IndexController::class, 'recherche'])->name('index.recherche');

//Route::get('/pagelibre/liste', [PagelibreController::class, 'liste'])->name('pagelibre.liste');
Route::get('/page/{id}-{titre}.html', [PagelibreController::class, 'detail'])->name('pagelibre.detail');

Route::get('/actualites.html', [ActualiteController::class, 'liste'])->name('actualite.liste');
Route::get('/actualite/{id}-{titre}.html', [ActualiteController::class, 'detail'])->name('actualite.detail');

Route::post('/commentaire/create', [CommentaireController::class, 'store'])->name('commentaire.store');

Route::get('/chiffres.html', [ChiffreController::class, 'liste'])->name('chiffre.liste');

Route::get('/documents.html', [DocumentController::class, 'liste'])->name('document.liste');
//Route::get('/documenttypes.html', [DocumentController::class, 'liste'])->name('document.liste');
//Route::get('/documenttype/{id}-{titre}.html', [DocumenttypeController::class, 'detail'])->name('documenttype.detail');
Route::get('/documents/{id}-{titre}.html', [DocumentController::class, 'liste'])->name('document.liste');

Route::get('/partenaires.html', [PartenaireController::class, 'liste'])->name('partenaire.liste');
Route::get('/partenaire/{id}-{titre}.html', [PartenaireController::class, 'detail'])->name('partenaire.detail');

Route::get('/temoignages.html', [TemoignageController::class, 'liste'])->name('temoignage.liste');

Route::get('/services.html', [ServiceController::class, 'liste'])->name('service.liste');
Route::get('/service/{id}-{titre}.html', [ServiceController::class, 'detail'])->name('service.detail');

Route::get('/contacts.html', [ContactController::class, 'formulaire'])->name('contact.formulaire');
Route::post('/contacts.html', [ContactController::class, 'storeformulaire'])->name('contact.storeformulaire');

Route::get('/faqs.html', [FaqController::class, 'liste'])->name('faq.liste');
Route::get('/faq/{id}-{titre}.html', [FaqController::class, 'detail'])->name('faq.detail');


Route::get(
    'media/resize/{w}/{h}/{path}',
    [MediaController::class, 'resize']
)->where('path', '.*');

// Route AJAX pour charger les options du champ table_id
Route::get('admin/ressourcetypeoffretype/load-options', [RessourcetypeoffretypeController::class, 'loadTableOptions']);





