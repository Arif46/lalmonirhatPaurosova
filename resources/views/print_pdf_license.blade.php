<!doctype html>
<html lang="en">

<head>
    <title>Login Panel</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->    
    <link rel="shortcut icon" href="{{asset('certificate/images/svg/logo-white-background.svg')}}" type="image/x-icon">

    <link rel="stylesheet" type="text/css" href="{{asset('certificate/css/all.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('certificate/css/bootstrap.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('certificate/css/style.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('certificate/css/responsive.css')}}">
</head>

<body>

  
    
  <div id="container_content">
    <section>
        <div class="container-certificate">
            <div class="certificate trade-lisence">
                <div class="border-1">
                    <div class="border-2">
                        <div class="content">
                            <div class="watermark">
                                <img src="{{asset('certificate/images/pdf_logo.jpeg')}}" alt="">
                            </div>
                            <!--Header Section  Start-->
                            <div class="top">
                                <div class="d-flex justify-content-between">
                                    <!-- Top Left Photo Section -->
                                    <div class="left">
                                        <div class="photo">
                                            <img src="{{asset('certificate/images/pdf_logo.jpeg')}}" alt="">
                                           

                                        </div>
                                    </div>

                                    <!-- Top Center Title Section -->
                                    <div class="center text-center">
                                        <div class="text">
                                            <div class="head">????????????????????? ??????????????????</div>
                                            <div class="tail">?????????????????????, ????????????????????????</div>
                                            <div class="web">https://trishalpourosova.com</div>
                                            <div class="mt-2">??????????????? / ????????????????????? ????????????????????????</div>
                                        </div>
                                    </div>

                                    <!-- Top Center Title Section -->
                                    <div class="right">
                                        <div class="mujib-borso ml-auto">
                                            <img class="" src="{{asset('certificate/images/svg/mujib sotoborso.svg')}}" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Header Section  End-->

                           <!-- Short Description Start -->
                            <div class="short-description">
                                <div class="d-flex">
                                    <div class="left">
                                        <table>
                                            <tr width="">
                                                <td class="test">???????????????????????? ??????</td>
                                                <td>:</td>
                                                <td>{{$bn_serial_no}}</td>
                                            </tr>
                                            <tr>
                                                <td class="test">???????????????????????? ????????????</td>
                                                <td>:</td>
                                                <td>{{$bn_user_id}}</td>
                                            </tr>
                                            <tr>
                                                <td class="test">?????????????????? ??????</td>
                                                <td>:</td>
                                                <td>{{$bn_ward_id}}</td>
                                            </tr>
                                           
                                           
                                            <tr>
                                                <td class="test">????????????????????? ???????????? ?????????</td>
                                                <td>:</td>
                                                <td>{{$bn_license_years}}</td>
                                            </tr>
                                            <tr>
                                                <td class="test">????????????????????? ???????????????</td>
                                                <td>:</td>
                                                <td>{{$bn_date}}</td>
                                            </tr>
                                        </table>
                                    </div>
                                    @if($data->image == NULL)
                                    @else
                                    <div class="photo ml-auto">
                                        <img src="{{asset('certificate/images/photo.jpg')}}" alt="">
                                    </div>
                                    @endif
                                </div>
                            </div>                            
                           <!-- Short Description End -->

                            <div class="note">
                                ?????????????????? ????????? - ???????????? ?????? ?????????-????????? ??????????????? ?????? ??????????????? ?????? ???, ?????? ??? ?????? ??????????????? ????????????????????? (???????????????, ?????????????????????, ???????????? ??? ????????????????????????) ?????????????????????/??????????????? ????????????????????????????????? ?????????????????? ?????????????????? ????????????????????? ???????????????????????????????????? ????????????????????? ??????????????? ???????????? ??????????????? ??????????????? ???????????? ?????? ???????????? ?????? ????????? ????????????????????? ???????????? ?????????????????? 
                            </div>



                            <!--Description Start -->
                            <table class="main">
                                <tr width="">
                                    <td class="test">????????????????????? ???????????????????????????????????? ?????????</td>
                                    <td>:</td>
                                    <td>{{$data->institute_name}}</td>
                                </tr>
                                <tr>
                                    <td class="test">???????????????????????? ?????????</td>
                                    <td>:</td>
                                    <td>{{$data->business_type}}</td>
                                </tr>
                                <tr>
                                    <td class="test">????????????????????? ?????????</td>
                                    <td>:</td>
                                    <td>{{$data->owner_name}}</td>
                                </tr>
                                <tr>
                                    @if($data->husband_name == NULL)
                                    <td class="test">??????????????? ?????????</td>
                                    <td>:</td>
                                    <td>{{$data->father_name}}</td>
                                    @else
                                     <td class="test">????????????????????? ?????????</td>
                                     <td>{{$data->husband_name}}</td>
                                   @endif
                                </tr>
                                <tr>
                                    <td class="test">??????????????? ?????????</td>
                                    <td>:</td>
                                    <td>{{$data->mother_name}}</td>
                                </tr>
                                <tr>
                                    <td class="test">?????????????????? ???????????????????????????????????? ??????????????????</td>
                                    <td>:</td>
                                    <td>{{$data->institute_address}}</td>
                                </tr>
                                <tr>
                                    <td class="test">????????????????????? ?????????????????? (?????????????????????)</td>
                                    <td>:</td>
                                    <td>{{$data->owner_current_address}}</td>
                                </tr>
                                <tr>
                                    <td class="test">????????????????????? ?????????????????? (??????????????????)</td>
                                    <td>:</td>
                                    <td>{{$data->owner_permanent_address}}</td>
                                </tr>
                                <tr>
                                    @if($data->birth_certificate == NULL)
                                    <td class="test">??????????????? ??????????????????????????? ??????</td>
                                    <td>:</td>
                                    <td>{{$bn_nid}}</td>
                                    @else
                                    <td class="test">???????????? ????????? ??????</td>
                                    <td>:</td>
                                    <td>{{$bn_birth}}</td>
                                    @endif
                                </tr>
                                <tr>
                                    <td class="test">????????? / ?????????????????? ??????</td>
                                    <td>:</td>
                                    <td>{{$bn_mobile}}</td>
                                </tr>
                                <tr>
                                    <td class="" valign="top">?????????????????? ???????????????</td>
                                    <td valign="top">:</td>
                                    <td>
                                        <table class="sub">
                                            <tr>
                                                <th>?????????????????? ???????????????</th>
                                                <th>????????????</th>
                                            </tr>
                                            <tr>
                                                <td>??????????????? ???????????????????????? / ??????????????? ??????</td>
                                                <td>{{$bn_trade_fee}}</td>
                                            </tr>

                                            <tr>
                                                <td>???????????????</td>
                                                <td>{{$bn_vat}}%</td>
                                            </tr>

                                            <tr>
                                                <td>??????????????????????????? ??????</td>
                                                <td>{{$bn_singnboard_tax}}</td>
                                            </tr>
                                            <tr>
                                                <td>???????????????????????? ??????</td>
                                                <td>{{$bn_business_tax}}</td>
                                            </tr>
                                            
                                            <tr>
                                                <td>????????????????????????</td>
                                                <td>{{$bn_other}}</td>
                                            </tr>
                                            <tr>
                                                <th>?????????</th>
                                                <th>{{$bn_total}} ????????????</th>
                                            </tr>
                                        </table>

                                        <div class="small-text my-3">
                                            ???????????????????????? ??????????????? ???????????? ???????????? ????????? ??????????????? ???????????? ????????? {{$bn_total}} ???????????? ???????????? ????????????
                                        </div>
                                    </td>
                                </tr>                                
                            </table>
                            <!--Description End -->

                            <!-- Footer Section Start -->
                            <table class="sign" align="right">
                                <tr>
                                    <td class="left">
                                        <span></span> <br>
                                        ???????????????????????? ????????????????????????
                                    </td>
                                    <td class="right">
                                        <span></span> <br>
                                        ????????????
                                    </td>
                                </tr>
                            </table>
                            <!-- Footer Section End -->
                            <div class="qr-verify" style="margin-bottom: 78px;">
                                <div class="code" >
                                      <img src="{{asset('/certificate/images/svg/qr-code.svg')}}" alt="">
                                </div>
                                <div class="text-center">
                                    ???????????????????????? ??????????????? ????????????<br> ???????????? QR ????????? ?????? ????????????????????? ????????????
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

  </div>
  
</body>

</html>