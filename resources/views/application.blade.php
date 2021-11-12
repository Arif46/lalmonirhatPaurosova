@extends('member_master')
@section('member_content')
 
 <div class="col-lg-9 mt-4 mt-lg-0">
   <div class="dashboard-body">
       <div class="content-header" style="padding: 15px;">
	     চারিত্রিক সনদ
	    </div>

	    <div class="content py-5">
	     <form action="{{URL::to('/insert-nagorik_application')}}" enctype="multipart/form-data" method="post">
	     	@csrf
           <div class="row">
           	 <div class="col-md-4">
           	 	<div class="form-group">
           	 	<label for="name">আবেদনকারীর নাম</label>
           	 	<input type="text" id="name" name="name" class="form-control" placeholder="আবেদনকারীর নাম" required="">
           	 </div>
           	 </div>

           	 <div class="col-md-4">
           	 	<div class="form-group">
           	 	
           	 	<select for="guardian_status" class="guardian_status" required="">
           	 		<option value="father">পিতার নাম</option>
           	 		<option value="husband">স্বামীর নাম</option>
           	 	</select>
           	 	<input style="margin-top: 10px;" type="text" id="guardian_status" name="father_name" class="form-control guardian_val" placeholder="পিতা / স্বামীর নাম">
           	 </div>
           	 </div>

           	 <div class="col-md-4">
           	 	<div class="form-group">
           	 	<label for="mother_name">মাতার নাম</label>
           	 	<input type="text" id="mother_name" name="mother_name" class="form-control" placeholder="মাতার নাম" required="">
           	 </div>
           	 </div>

           	 <div class="col-md-4">
           	 	<div class="form-group">
           	 	<label for="mobile">মোবাইল</label>
           	 	<input type="text" id="mobile" name="mobile" class="form-control" placeholder="মোবাইল" required="">
           	 </div>
           	 </div>
           	 <div class="col-md-4">
           	 	<div class="form-group">
           	 	
           	 	<select for="birth_nid" class="birth_nid" required="">
           	 		<option value="select_nid">এনআইডি নম্বর</option>
           	 		<option value="select_birth">জন্ম নিবন্ধন নম্বর</option>
           	 	</select>
           	 	<input style="margin-top: 10px;" type="text" id="birth_nid" name="nid" class="form-control val_birth_nid" placeholder="এনআইডি / জন্ম নিবন্ধন নম্বর">
           	 </div>
           	 </div>

           	 <div class="col-md-4">
                <label for="Birthdatepicker" class="col-form-label">জন্ম তারিখ</label> <span
                    style="color: red">*</span>
                <div class="d-flex">
                    <select name="day" id="day" class="form-control col-md-4" required="">
                        <option value="">Day</option>
                        @for ($i = 1; $i <= 31; $i++)
                            <option value="{{ $i }}">{{ $i }}</option>
                        @endfor
                    </select>
                    <select name="month" id="month" class="form-control col-md-4" required="">
                        <option value="">Month</option>
                        <option value="January">January</option>
                        <option value="February">February</option>
                        <option value="March">March</option>
                        <option value="April">April</option>
                        <option value="May">May</option>
                        <option value="June">June</option>
                        <option value="July">July</option>
                        <option value="August">August</option>
                        <option value="September">September</option>
                        <option value="October">October</option>
                        <option value="November">November</option>
                        <option value="December">December</option>
                    </select>
                    <select name="year" id="year" class="form-control col-md-4" required="">
                        <option value="">Year</option>
                        @for ($i = (int) date('Y'); $i >= 1700; $i--)
                            <option value="{{ $i }}">{{ $i }}</option>
                        @endfor
                    </select>
                </div>
            </div>

             <div class="col-md-12" style="margin-top: 5px;">
              <div class="form-group">
              	 <label for="address"><b>ঠিকানা</b></label>
              	  <textarea rows="5" cols="40" id="address" class="form-control" name="address" placeholder="ঠিকানা" required=""></textarea>
               </div>
              
             </div>


             <div class="row" style="margin-left: 8px;">
             	 <div class="col-sm-6" style="margin-top: 10px;">
                    <div class="form-group">
                      <label for="image">ছবি আপলোড (অপশনাল)</label><br>
                       <input type="file" name="image" accept="image/*" onchange="readURL(this);">
                    </div>
                  </div>

                  <div class="col-sm-6" style="margin-top: 10px;">
                     <img id="image" src="" style="width: 60px; height: 60px; display: none;">
                  </div>
             </div>


           	 
            </div>
            <button type="submit" class="btn btn-success">আবেদন</button>
	     </form>
	    </div>
    </div>

 </div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
 $(document).ready(function(){
 	$(document).on('change', '.guardian_status', function(){
 		var guardian_status = $('.guardian_status').val();

 		
 		if(guardian_status == 'father'){
 			$('.guardian_val').attr('placeholder', 'পিতার নাম');
 			 $('.guardian_val').attr('name', 'father_name');
 		}
 		else{
 			$('.guardian_val').attr('placeholder', 'স্বামীর নাম');
 			$('.guardian_val').attr('name', 'husband_name');
 		}
 		
 	});

 	$(document).on('change', '.birth_nid', function(){
 		var birth_nid = $('.birth_nid').val();

 		
 		if(birth_nid == 'select_birth'){
 			$('.val_birth_nid').attr('placeholder', 'জন্ম নিবন্ধন নম্বর');
 			 $('.val_birth_nid').attr('name', 'birth_certificate');
 		}
 		else{
 			$('.val_birth_nid').attr('placeholder', 'এনআইডি নম্বর');
 			 $('.val_birth_nid').attr('name', 'nid');
 		}
 		
 	});
 });


 function readURL(input) {
      if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
             $("#image").css("display", "block");
              $('#image')
                  .attr('src', e.target.result)
                  .width(80)
                  .height(80);
          };
          reader.readAsDataURL(input.files[0]);
      }
   }
</script>
@endsection