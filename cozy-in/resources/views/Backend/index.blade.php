@extends('backend.layouts.main')

@section('content')
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard Admin</h1>
            <a href="/dashboard/concept/create" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-plus"></i>&nbsp; New Concept Room</a>
        </div>
        <!-- <h1 class="h3 mb-2 text-gray-800">Dashboard Admin</h1>
        <p class="mb-4">This is where all the room concepts on this website are shown</p> -->

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Concepts Room</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Name Concept</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Name Concept</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @foreach ($concepts as $item)
                                <tr>
                                    <td>{{ $item->name }}</td>
                                    <td>{{\Illuminate\Support\Str::limit($item->desc, 100)}}</td>
                                    <td>
                                        <a href="/dashboard/concept/{{ $item->id }}/edit" class="btn btn-warning text-white text-decoration-none"><i class="fas fa-edit"></i></a>
                                        <form action="/dashboard/concept/{{ $item->id }}" method="post" class="d-inline">
                                            @csrf
                                            @method('delete')
                                            <button type="submit" class="btn btn-danger text-white" title="Hapus Data" onclick="return confirm('Data ini akan dihapus! Anda yakin untuk menghapus data ini?')"><i class="fas fa-trash"></i></button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection