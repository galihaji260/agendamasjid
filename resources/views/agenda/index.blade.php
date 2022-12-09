@extends('layouts.master')

@section('content')
 <!-- Content Header (Page header) -->
 <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Agenda</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Agenda</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Agenda</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="table-responsive">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Nama Kegiatan</th>
                    <th>Hari</th>
                    <th>Pasaran</th>
                    <th>Tanggal</th>
                    <th>Penanggung Jawab</th>
                    <th>Pengisi</th>
                    <th>Jenis</th>
                    <th>Status</th>
                    <th>Aksi</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($agendas as $agenda)
                  <tr>
                    <td>{{$agenda->nama_kegiatan}}</td>
                    <td>{{$agenda->hari}}</td>
                    <td>{{$agenda->pasaran}}</td>
                    <td>{{$agenda->tanggal}}</td>
                    <td>{{$agenda->penanggung_jawab}}</td>
                    <td>{{$agenda->pengisi}}</td>
                    <td>{{$agenda->jenis}}</td>
                    <td>{{$agenda->status}}</td>
                    <td>
                      <form action="{{ route('agenda.destroy', $agenda->id) }}" method="POST">
                        <a class="" href="{{ route('agenda.edit', $agenda->id) }}">
                        <i class="fa fa-pen" aria-hidden="true"></i>
                        </a>
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn">
                          <i class="fa fa-trash text-danger" aria-hidden="true"></i>
                        </button>
                      </form>
                    </td>
                  </tr>
                  @endforeach
                  </tfoot>
                </table>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
@stop