<?php

use App\Http\Controllers\AgendaController;
use App\Http\Controllers\AnggotaController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\JenisAgendaController;
use App\Http\Controllers\NotulaController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PasaranController;
use App\Http\Controllers\PengisiYasinanController;
use App\Http\Controllers\RancanganBiasaController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::middleware('auth')->group(function () {
    Route::get('/rancanganrutin', [PasaranController::class, 'index'])->name('pasaran.index');
    Route::get('/', [DashboardController::class, 'index'])->name('dashboard.index');
    Route::post('/store', [PasaranController::class, 'store'])->name('pasaran.store');
    Route::resource('agenda', AgendaController::class);
    Route::resource('pengisiyasinan', PengisiYasinanController::class);
    Route::resource('jenisagenda', JenisAgendaController::class);
    Route::resource('anggota', AnggotaController::class);
    Route::resource('rancanganbiasa', RancanganBiasaController::class);
    Route::resource('notula', NotulaController::class);
    Route::resource('user', UserController::class);
});
Route::get('login', [UserController::class, 'login'])->name('login');
Route::post('login', [UserController::class, 'loginAction'])->name('login.action');
Route::get('logout', [UserController::class, 'logout'])->name('logout');
