@extends('admin.layouts.app')
@section('css')
    <link rel="stylesheet" href="{{ asset("admin/plugins/datatables/dataTables.bootstrap4.css") }}">
@endsection
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
              <div class="card-tools">
                  <a href="{{ route("role.create") }}" class="btn btn-sm btn-primary">Create role</a>
              </div>
            </div>

            <!-- /.card-header -->
            <div class="card-body">
              @include('includes.messages')
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>STT</th>
                  <th>Name</th>
                  <th>Created_at</th>
                  <th>Updated_at</th>
                  <th>Action  </th>
                </tr>
                </thead>
                <tbody>
                @foreach ($roles as $key => $role)
                <tr>
                  <td>{{ ++$key }}</td>
                  <td>
                    {{ $role->name }}
                  </td>
                  <td>{{ $role->created_at }}</td>
                  <td> {{ $role->updated_at }}</td>
                  <td>
                    <a href="{{ route('role.edit',$role->id) }}"><i class="fa fa-edit"></i></a>
                    <form id="delete-form-{{ $role->id }}" method="post" action="{{ route('role.destroy',$role->id) }}" style="display: none">
                        {{ csrf_field() }}
                        {{ method_field('DELETE') }}
                    </form>
                      <a href="" onclick="
                      if(confirm('Are you sure, You Want to delete this?'))
                          {
                            event.preventDefault();
                            document.getElementById('delete-form-{{ $role->id }}').submit();
                          }
                          else{
                            event.preventDefault();
                          }" ><i class="fa fa-trash"></i>
                      </a>
                  </td>
                </tr>
                @endforeach
                </tbody>
                <tfoot>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>CSS grade</th>
                </tr>
                </tfoot>
              </table>
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

@section('js')
    <script src="{{ asset("admin/plugins/datatables/jquery.dataTables.js") }}"></script>
    <script src="{{ asset("admin/plugins/datatables/dataTables.bootstrap4.js") }}"></script>
    <script>
         $(function () {
            $("#example1").DataTable();
        });
    </script>
@endsection