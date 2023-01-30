@extends('layouts.app')

@section('content')
<div class="row justify-content-center">
  <div class="col-md-12 mt-3">
    
    <h3 class="mb-4 fw-bold text-center">Ubah Data Dosen</h3>
    
<h4 style="text-align:center ">Sella</h4>
    <form action="/students/{{ $student->id }}" method="POST" class="row mb-5" enctype="multipart/form-data">
      @method('put')
      @csrf
      <div class="col-sm-7 mt-3">
        <div class="card">
          <div class="card-body">
            <h3 class="text-center mb-4">Data Diri</h3>
            <div class="row mb-3">
              <div>
                  <img class="img-preview img-fluid mb-3 col-sm-3">
              </div>
              <label for="foto" class="col-sm-4 col-form-label">Foto Kandidat</label>
              <div class="col-sm-8">
                <input class="form-control @error('foto') is-invalid @enderror" type="file" id="foto" name="foto" onchange="previewImage()">
                @error('foto')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
                @enderror
              </div>
            </div>
            <div class="row mb-3">
              <label for="name" class="col-sm-4 col-form-label">Nama Dosen</label>
              <div class="col-sm-8">
                <input type="text" value="{{ old('name', $student->name) }}" class="form-control @error('name') is-invalid @enderror" id="name" name="name" placeholder="Nama Dosen">
                @error('name')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
                @enderror
              </div>
            </div>
            <div class="row mb-3">
              <label for="nidn" class="col-sm-4 col-form-label">Nomor Induk Dosen Nasional</label>
              <div class="col-sm-8">
                <input type="text" value="{{ old('nidn', $student->nidn) }}" class="form-control @error('nidn') is-invalid @enderror" id="nidn" name="nidn" placeholder="Nomor Induk Dosen Nasional" disabled>
                @error('nidn')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
                @enderror
              </div>
            </div>
            <div class="row mb-3">
              <label for="alamat" class="col-sm-4 col-form-label">Alamat</label>
              <div class="col-sm-8">
                <input type="text" value="{{ old('alamat', $student->alamat) }}" class="form-control @error('alamat') is-invalid @enderror" id="alamat" name="alamat" placeholder="Alamat">
                @error('alamat')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
                @enderror
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-5 mt-3">
        <div class="card">
          <div class="card-body">
            <h3 class="text-center mb-4">Informasi</h3>
            <div class="mb-3">
              <label for="ipk" class="form-label">IPK</label>
              <input type="number" step="0.01" value="{{ old('ipk', $student->ipk) }}" class="form-control @error('ipk') is-invalid @enderror" id="ipk" name="ipk" min="3" max="4" placeholder="contoh: 3.6">
              @error('ipk')
                <div class="invalid-feedback">
                  {{ $message }}
                </div>
              @enderror
            </div>
            <div class="mb-3">
              <label for="lulusan" class="form-label">LULUSAN</label>
              <input type="number" step="0.01" value="{{ old('lulusan', $student->lulusan) }}" class="form-control @error('lulusan') is-invalid @enderror" id="lulusan" name="lulusan" >
              @error('lulusan')
                <div class="invalid-feedback">
                  {{ $message }}
                </div>
              @enderror
            </div>
            
            <div class="mb-3">
              <label class="form-label" for="pengalaman_mengajar">Pengalaman Mengajar</label>
              <div class="input-group">
                <input type="number" value="{{ old('pengalaman_mengajar', $student->pengalaman_mengajar) }}" class="form-control @error('pengalaman_mengajar') is-invalid @enderror" id="pengalaman_mengajar" name="pengalaman_mengajar" min="0" placeholder="contoh: 2">
                <div class="input-group-text">orang</div>
                @error('pengalaman_mengajar')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
                @enderror
              </div>
            </div>
            <div class="col-md-12 text-center">
              <a href="/students" class="btn btn2 btn-primary fw-bold" type="submit">Kembali</a>
              <button class="btn btn1 btn-primary fw-bold" type="submit">Simpan</button>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
  
</div>
<script>
  const previewImage = () => {
    const image = document.querySelector('#foto');
    const imgPreview = document.querySelector('.img-preview');
    
    imgPreview.style.display = 'block';

    const oFReader = new FileReader();
    oFReader.readAsDataURL(image.files[0]);

    oFReader.onload = function(oFREvent) {
      imgPreview.src = oFREvent.target.result;
    }
  };
</script>
@endsection