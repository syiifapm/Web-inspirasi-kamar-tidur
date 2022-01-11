@extends('backend.layouts.main')

@section('content')
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard Admin</h1>
            <a href="/dashboard/concept/" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm"><i class="fas fa-angle-double-left"></i>&nbsp; Back to Dashboard</a>
        </div>
        <!-- <h1 class="h3 mb-2 text-gray-800">Dashboard Admin</h1>
        <p class="mb-4">This is where all the room concepts on this website are shown</p> -->

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Edit Concepts Room</h6>
            </div>
            <div class="card-body">
                <form action="/dashboard/concept/{{ $concept->id }}" method="POST" enctype="multipart/form-data">
                    @method('put')
                    @csrf
                    <div class="mb-3">
                        <label for="" class="form-label fw-bold">Concept Name</label>
                        <input type="text" class="form-control" value="{{ $concept->name }}" name="name">
                    </div>
                    <div class="mb-3">
                        <label for="" class="form-label fw-bold">Concept Description</label>
                        <input id="desc" type="hidden" value="{{ $concept->desc }}" name="desc">
                        <trix-editor input="desc"></trix-editor>
                    </div>
                    <div class="mb-3">
                        <label for="" class="form-label fw-bold">Concept Image Preview</label>
                        @if ($concept->image)
                            <img class="img-preview img-fluid col-sm-5 d-block" src="{{ asset('storage/' . $concept->image) }}">
                        @else
                            <img class="img-preview img-fluid col-sm-5">
                        @endif
                    </div>
                    <div class="mb-4">
                        <label for="" class="form-label fw-bold">Concept Image</label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" name="image" id="imageConcept" onchange="previewImage()">
                            <label class="custom-file-label" id="" for="customFile">Choose file</label>
                        </div>
                    </div>
                    <div class="text-right mb-3">
                        <button class="btn btn-primary" type="submit"><i class="far fa-save"></i>&nbsp; Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection