@extends('admin_master')
@section('admin_content')


<div class="content-wrapper">
   
    <section class="content">
      <div class="container-fluid">
        <div class="row mb-2" style="margin-top: 20px">
          <div class="col-sm-6">
            <h4>ট্রেড লাইসেন্স ফি</h4>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">হোম</a></li>
              <li class="breadcrumb-item active">ট্রেড লাইসেন্স ফি</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="container col-lg-4">

      
</div>              <div class="card-body">
                <div class="tab-content">
                  <div class="active tab-pane" id="settings"><br><br>
                    <form class="needs-validation" action="{{route('store.trade')}}" method="post">
                     @csrf                    
                      <div class="form-group row">
                       <label for="storeId" class="col-sm-2 col-form-label">
                        মালিকানা ধরণ
                        <span style="color: red">*</span></label>
                          <div class="col-sm-7">
                            <select class="form-control" name="owner_type" id="" required>
                              <option value="" selected="" disabled="">লাইসেন্সের মালিক নির্বাচন করুন</option>
                                 
                                    <option value="1">যৌথ মালিকানাধীন</option>                
                               
                                    <option value="2">ব্যক্তি মালিকানাধীন</option>                
                               
                                    <option value="3">লিমিটেড কোম্পানি</option>                
                                
                            </select>
                            <div class="invalid-feedback">অনুগ্রহ করে এই ঘরটি পুরন কর.</div>  
                          </div>
                     </div>
                   
                     <div class="form-group row">
                       <label for="storeId" class="col-sm-2 col-form-label">ব্যবসার ধরণ <span style="color: red">*</span></label>
                          <div class="col-sm-7">
                            <select class="form-control"  name="business_type_id" id="business_type_id" required>
                           <option value="" selected="" disabled="">বিজনেস টাইপ নির্বাচন করুন</option>
                            
                            @php
                             $business_type = DB::table('business_types')->orderBy('id','DESC')->get();
                            @endphp
                            @foreach($business_type as $row)       
                            <option value="{{$row->id}}">{{$row->name}}</option>
                            @endforeach                 
                          </select>
                            <div class="invalid-feedback">অনুগ্রহ করে এই ঘরটি পুরন কর.</div>
                          </div> 
                     </div>
                      <div class="form-group row">
                        <label for="fee" class="col-sm-2 col-form-label">ফি</label>
                          <div class="col-sm-7">
                            <input type="text" class="form-control fee" name="fee" >
                          </div>
                      </div>
           
                      <div class="form-group row">
                        <label for="vat" class="col-sm-2 col-form-label">ভ্যাট</label>
                        <div class="col-sm-7">
                          <input type="text" class="form-control vat" name="vat" placeholder="ভ্যাট 15%" readonly>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="signboard_tax" class="col-sm-2 col-form-label">সাইনবোর্ড ট্যাক্স<span style="color: red">*</span></label>
                        <div class="col-sm-7">
                          <input type="text" class="form-control signboard_tax" name="signboard_tax" placeholder="সাইনবোর্ড ট্যাক্স" id="signboard_tax" required>
                          <div class="invalid-feedback">অনুগ্রহ করে এই ঘরটি পুরন কর</div>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="business_tax" class="col-sm-2 col-form-label">ব্যবসা/বাণিজ্য কর  
                          <span style="color: red">*</span></label>
                        <div class="col-sm-7">
                          <input type="number" class="form-control business_tax" name="business_tax" id="business_tax" placeholder="ব্যবসা/বাণিজ্য কর" id="" required>
                          <div class="invalid-feedback">অনুগ্রহ করে এই ঘরটি পুরন কর.</div>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="others" class="col-sm-2 col-form-label">অন্যান্য</label>
                        <div class="col-sm-7">
                          <input type="number" class="form-control others" name="others" id="others" placeholder="অন্যান্য">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="online_charge" class="col-sm-2 col-form-label">Online Charge</label>
                        <div class="col-sm-7">
                          <input type="number" class="form-control online_charge" name="online_charge" placeholder="Online Charge" id="online_charge">
                        </div>
                      </div>

                       <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">
                          
                          Total পরিমাণ
                          

                        </label>
                        <div class="col-sm-7">
                          <input type="text" class="form-control total" name="total" >
                        </div>
                      </div>
                       
                      <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                          <a href="{{ route('trade.fee') }}" style='background: #a7a4a4; border-color: #9a9da0;' class="btn btn-primary"><i class="fas fa-window-close"></i> বাতিল</a>
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

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script>
  $(document).ready(function(){
  	  $(document).on("input", ".fee", function(){
  	  	 var fee = $(".fee").val();
         if(fee == ""){
          
             $(".signboard_tax").val('');
             $(".business_tax").val('');
 			 $(".others").val('');
 			 $(".online_charge").val('');
         }
  	  	var vat = fee-fee*85/100;
  	  	$(".vat").val(vat);
  	  	
  	  	$(".total").val(vat);
  	  });


  	  $(document).on("input", ".signboard_tax", function(){
  	  	 var signboard_tax = $(".signboard_tax").val();
         if(signboard_tax == ""){
         	 signboard_tax = 0;
         }
         
  	  	 var vat = parseInt($(".vat").val());
         $('.total').val(parseInt(signboard_tax)+vat);
  	  });

  	  $(document).on("input", ".business_tax", function(){
  	  	 var business_tax = $(".business_tax").val();
         if(business_tax == ""){
         	 business_tax = 0;
         }
         
  	  	 var vat = parseInt($(".vat").val());
  	  	 var signboard_tax = parseInt($(".signboard_tax").val());
         $('.total').val(parseInt(business_tax)+signboard_tax+vat);
  	  });

  	  $(document).on("input", ".others", function(){
  	  	 var others = $(".others").val();
         if(others == ""){
         	 others = 0;
         }
         
  	  	 var vat = parseInt($(".vat").val());
  	  	 var signboard_tax = parseInt($(".signboard_tax").val());
  	  	 var business_tax = parseInt($(".business_tax").val());
         $('.total').val(parseInt(others)+signboard_tax+business_tax+vat);
  	  });

  	  $(document).on("input", ".online_charge", function(){
  	  	 var online_charge = $(".online_charge").val();
         if(online_charge == ""){
         	 online_charge = 0;
         }
         
  	  	 var vat = parseInt($(".vat").val());
  	  	 var signboard_tax = parseInt($(".signboard_tax").val());
  	  	 var business_tax = parseInt($(".business_tax").val());
  	  	 var others = parseInt($(".others").val());
         $('.total').val(parseInt(online_charge)+signboard_tax+business_tax+others+vat);
  	  });
  });
 </script>
@endsection