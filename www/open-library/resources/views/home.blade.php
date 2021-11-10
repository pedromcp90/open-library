@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-xl-3 col-md-6">
            <div class="card card-stats">
                <!-- Card body -->
                <a href="/admin/author">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <h5 class="card-title text-uppercase text-muted mb-0">Books</h5>
                                <span class="h2 font-weight-bold mb-0">350,897</span>
                            </div>
                            <div class="col-auto">
                                <div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow">
                                    <i class="fa fa-book-open"></i>
                                </div>
                            </div>
                        </div>
                        <div class="div mt-4">
                            <a href="/admin/publishers" class="btn btn-primary btn-block">{{ 'Manage all Books' }}</a>
                        </div>
                    </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card card-stats">
                <!-- Card body -->

                <a href="/admin/author">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <h5 class="card-title text-uppercase text-muted mb-0">Authors</h5>
                                <span class="h2 font-weight-bold mb-0">2,356</span>
                            </div>
                            <div class="col-auto">
                                <div class="icon icon-shape bg-gradient-orange text-white rounded-circle shadow">
                                    <i class="fa fa-user-edit"></i>
                                </div>
                            </div>
                        </div>
                        <div class="div mt-4">
                            <a href="/admin/author" class="btn btn-primary btn-block">{{ 'Manage all Authors' }}</a>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card card-stats">
                <!-- Card body -->
                <a href="/admin/author">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <h5 class="card-title text-uppercase text-muted mb-0">Categories</h5>
                                <span class="h2 font-weight-bold mb-0">924</span>
                            </div>
                            <div class="col-auto">
                                <div class="icon icon-shape bg-gradient-green text-white rounded-circle shadow">
                                    <i class="fa fa-th-large"></i>
                                </div>
                            </div>
                        </div>
                        <div class="div mt-4">
                            <a href="/admin/category" class="btn btn-primary btn-block">{{ 'Manage all Categories' }}</a>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card card-stats">
                <!-- Card body -->
                <a href="/admin/author">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <h5 class="card-title text-uppercase text-muted mb-0">Publishers</h5>
                                <span class="h2 font-weight-bold mb-0">49,65%</span>
                            </div>
                            <div class="col-auto">
                                <div class="icon icon-shape bg-gradient-info text-white rounded-circle shadow">
                                    <i class="fa fa-user-tie"></i>
                                </div>
                            </div>
                        </div>
                        <div class="div mt-4">
                            <a href="/admin/publisher" class="btn btn-primary btn-block">{{ 'Manage all Publishers' }}</a>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
@endsection
