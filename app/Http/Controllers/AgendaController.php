<?php

namespace App\Http\Controllers;

use App\Models\Agenda;
use App\Models\Divisi;
use App\Models\JenisAgenda;
use App\Models\PersonalData;
use App\Models\StatusKegiatan;
use Illuminate\Http\Request;

class AgendaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $agendas = Agenda::all();
        return view('agenda.index', compact('agendas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('agenda.create');
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
        $agenda = Agenda::findOrfail($id);
        $jenisagenda = JenisAgenda::pluck('nama', 'id');
        $divisi = Divisi::pluck('nama', 'id');
        $penanggungjawab = PersonalData::where('tipe', 'internal')->pluck('nama', 'id');
        $pengisi = PersonalData::pluck('nama', 'id');
        $statuskegiatan = StatusKegiatan::pluck('nama','id');
        return view('agenda.edit', compact(['agenda', 'jenisagenda', 'divisi', 'penanggungjawab', 'pengisi', 'statuskegiatan']));
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
            'nama_kegiatan' => 'required',
            'penanggung_jawab' => 'required'
        ]);
        $agenda = Agenda::findOrfail($id);
        $agenda->fill($request->post())->save();

        return redirect()->route('agenda.index')->with('success', 'Agenda Berhasil Diupdate');
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
    }
}
