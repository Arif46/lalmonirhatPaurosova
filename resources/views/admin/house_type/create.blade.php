@extends('admin_master')
@section('admin_content')

 
 <div class="content-wrapper"> 
    <section class="content">
      <div class="container-fluid">
        <div class="row mb-2" style="margin-top: 20px">
          <div class="col-sm-6">
            <h4>বাড়ির ধরণ সেটআপ করুন</h4>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">বাড়ির ধরণ সেটআপ করুন</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header p-2">
                <h4 style="display: inline-block">বাড়ির ধরণ সেটআপ</h4>
                <a style="float: right;" href="{{route('house.type')}}" class="btn btn-primary">বাড়ির ধরণ তালিকা</a>
              </div>
              <div class="container col-lg-4">

      
</div>              <div class="card-body">
                <div class="tab-content">

                  <div class="active tab-pane" id="settings"><br><br>
                    <form class="form-horizontal" action="{{route('store.house_type')}}" method="post">
                      @csrf                      
                      <div class="form-group row">
                        <label for="name" class="col-sm-2 col-form-label">Name<span style="color: red">*</span></label>
                        <div class="col-sm-7">
                          <input type="text" id="name" class="form-control" name="name" placeholder="Name" required="">
                        </div>
                      </div>  

                      
                      <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Status<span style="color: red">*</span></label>
                        <div class="col-sm-7">
                          <select name="status" id="" class="form-control" required="">
                              <option value="1">Active</option>
                              <option value="0">Inactive</option>
                          </select>
                        </div>
                      </div>            
                      <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                          <button type="submit" class="btn btn-success">সংরক্ষণ</button>
                        </div>
                      </div>
                    </form><br><br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  
  <!-- /.content-wrapper -->


@endsection
