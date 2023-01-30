@extends('layouts.app')

@section('content')
<div  class="d-grid gap-2 d-md-flex justify-content-md-end">
  <a href="/students" class="btn btn2 btn-primary fw-bold"><i class="bi bi-skip-backward">      </i></a>
</div>
<div class="row justify-content-center">
  <div class="col-md-6 mt-3">
    <br><br><div class="col card-header py-3" style="color: rgb(60, 150, 168)">
<h4 style="text-align:center " class="">Refki Diza</h4></div>
    <h3 class="mb-4 text-center fw-bold">Hasil Penentuan Calon Dosen</h3>
    <div class="table-responsive">
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col" class="text-center">NIDN</th>
            <th scope="col" class="text-center">Nama</th>
            <th scope="col" class="text-center">Skor</th>
            <th scope="col" class="text-center">Peringkat</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($results as $result)
            <tr>
              <th class="text-center">{{ $result->nidn }}</th>
              <td class="text-center">{{ $result->nama }}</td>
              <td class="text-center">{{ $result->skor }}</td>
              <td class="text-center">{{ ($results->currentpage()-1) * $results->perpage() + $loop->index + 1  }}</td>
            </tr>
          @endforeach
        </tbody>
      </table>
    </div>
    <div class="row mt-4 mb-5">
      <div class="col-sm-6">
        {{ $results->links() }}
      </div>
      <div class="col-sm-6">
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
          <a href="/results" class="btn btn2 btn-primary fw-bold">Ke Daftar Riwayat</a>
        </div>
      
      </div>
    </div>
  </div>
</div>
@endsection