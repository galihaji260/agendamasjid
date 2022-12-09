<?php

namespace App\Http\Controllers;

use App\Models\Divisi;
use App\Models\PersonalData;
use Illuminate\Http\Request;

class AnggotaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $anggotas = PersonalData::leftJoin('divisis', 'divisis.id', 'personal_data.divisi')
        ->where('personal_data.tipe','internal')
        ->get(['personal_data.id','personal_data.nama','divisis.nama as divisi','personal_data.no_hp']);
        return view('anggota.index', compact('anggotas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $divisi = Divisi::pluck('nama', 'id');
        return view('anggota.create', compact('divisi'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $request->validate([
            'nama' => 'required',
            'no_hp' => 'required'
        ]);
        PersonalData::create($request->post());
        return redirect()->route('anggota.index')->with('success', 'Sukses Menambah Data Anggota');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $anggota = PersonalData::findOrfail($id);
        $divisi = Divisi::pluck('nama', 'id');
        return view('anggota.edit', compact(['anggota', 'divisi']));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $request->validate([
            'nama' => 'required',
            'no_hp' => 'required'
        ]);
        $anggota = PersonalData::findOrfail($id);
        $anggota->fill($request->post())->save();

        return redirect()->route('anggota.index')->with('success', 'Jenis Agenda Berhasil Diupdate');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $anggota = PersonalData::findOrfail($id);
        $anggota->delete();
        return redirect()->route('anggota.index')->with('success', 'Anggota Berhasil Dihapus');
    }
}
