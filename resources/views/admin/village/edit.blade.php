@extends('admin_master')
@section('admin_content')

<div class="content-wrapper">

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row mb-2" style="margin-top: 20px">
        <div class="col-sm-6">
          <h4>নতুন গ্রাম যোগ করুন</h4>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">হোম</a></li>
            <li class="breadcrumb-item active">নতুন গ্রাম যোগ করুন</li>
          </ol>
        </div>
      </div>
      <div class="row">
        <!-- /.col -->
        <div class="col-md-12">
          <div class="card">
            <div class="card-header p-2">
              <h4>নতুন গ্রাম যোগ করুন</h4>
            </div><!-- /.card-header -->
            <div class="container col-lg-4">

      
</div>            <div class="card-body">
              <div class="tab-content">

                <div class="active tab-pane" id="settings"><br><br>
                  <form class="needs-validation" action="{{route('update.village',$edit->id)}}" method="post">
                   @csrf                   
                    <div class="form-group row">
                      <label for="inputName" class="col-sm-2 col-form-label">Name
                        <span style="color: red">*</span>
                      </label>
                      <div class="col-sm-7">
                        <input type="text" class="form-control" name="village_name" placeholder="Name" value="{{$edit->village_name}}">
                        <div class="invalid-feedback">Please fill out this field.</div>
                      </div>
                    </div>
                    
                    <div class="form-group row">
                      <label for="storeId" class="col-sm-2 col-form-label">ওয়ার্ড
                        <span style="color: red">*</span>
                      </label>
                      <div class="col-sm-7">
                        <select class="form-control" name="ward_id" required>
                          <option value="">ওয়ার্ড নির্বাচন করুন</option>
                             @php
                              $wards = DB::table('wards')->orderBy('id','DESC')->get();
                             @endphp
                             @foreach($wards as $row)
                              <option value="{{$row->id}}" <?php if($row->id == $edit->ward_id){echo "selected";} ?>>{{$row->ward_no}}</option>
                             @endforeach
                         </select>
                        <div class="invalid-feedback">অনুগ্রহ করে এই ঘরটি পুরন কর.</div>
                      </div>
                    </div>
                    
                    
                    

                    

                    <div class="form-group row">
                      <div class="offset-sm-2 col-sm-10">
                        <button type="submit" class="btn btn-success">সংরক্ষণ</button>
                        <a href="{{route('village')}}"
                          style='background: #a7a4a4; border-color: #9a9da0;' class="btn btn-primary">
                          <i class="fas fa-window-close"></i> বাতিল</a>
                      </div>
                    </div>
                  </form><br><br>
                </div>
                <!-- /.tab-pane -->
              </div>
              <!-- /.tab-content -->
            </div><!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

@endsection