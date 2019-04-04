@extends('admin.layouts.app')
@section('main-content')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Data Table With Full Features</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                    
                    <form role="form" action="{{ route('category.store') }}" method="post">
                      @include('includes.messages')
                            {{ csrf_field() }}
                              <div class="box-body">
                              <div class="col-lg-offset-3 col-lg-6">
                                <div class="form-group">
                                  <label for="name">Category title</label>
                                  <input type="text" class="form-control" id="name" name="name" placeholder="Category Title">
                                </div>
                              <div class="form-group">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <a href='{{ route('category.index') }}' class="btn btn-warning">Back</a>
                              </div>
                                  
                              </div>
                                  
                              </div>
              
                            </form>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
@endsection
