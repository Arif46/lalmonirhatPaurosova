@extends('admin_master')
@section('admin_content')
<div class="content-wrapper">
  <section class="content">
    <div class="container-fluid">
      <div class="row mb-2" style="margin-top: 20px">
        <div class="col-sm-6">
          <h4>বানিজ্যিক হোল্ডিং কর রেট সেটআপ </h4>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">বানিজ্যিক হোল্ডিং কর রেট সেটআপ</li>
          </ol>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header p-2">
              <h4 style="display: inline-block">বানিজ্যিক হোল্ডিং কর রেট </h4>
              <a href="{{route('business.rate')}}" class="btn btn-primary" style="float: right">
                <i class="fas fa-store-alt"></i> বানিজ্যিক হোল্ডিং কর তালিকা
              </a>
            </div>
            <div class="container col-lg-4">

    
           </div>    
           <div class="card-body">
              <div class="tab-content">

                <div class="active tab-pane" id="settings"><br><br>
                  <form class="form-horizontal" action="{{route('store.business_rate')}}" method="post">
                   @csrf                      
                    <div class="form-group row">
                      <label for="name" class="col-sm-2 col-form-label">House Type<span style="color: red">*</span></label>
                      <div class="col-sm-7">
                        <select id="name" class="form-control" name="house_type_id">
                       @php
                        $house_type = DB::table('house_types')->get();
                       @endphp
                       @foreach($house_type as $row)
                      <option value="{{$row->id}}">{{$row->name}}</option>
                      @endforeach
                </select>
                      </div>
                    </div>  
                    <div class="form-group row">
                      <label for="name" class="col-sm-2 col-form-label">Use Type<span style="color: red">*</span></label>
                      <div class="col-sm-7">
                        <select id="name" class="form-control" name="use_type">
                          <option value="0"> Self </option>
                          <option value="1"> Rent </option>
                        </select>
                      </div>
                    </div>  

                    <div class="form-group row">
                      <label for="tax_rate" class="col-sm-2 col-form-label">Tax Rate<span style="color: red">*</span></label>
                      <div class="col-sm-7">
                        <input type="number" id="tax_rate" class="form-control" name="tax_rate" placeholder="Rate">
                      </div>
                    </div>  
                    <div class="form-group row">
                      <label for="inputName" class="col-sm-2 col-form-label">Status<span style="color: red">*</span></label>
                      <div class="col-sm-7">
                        <select name="status" id="" class="form-control">
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
