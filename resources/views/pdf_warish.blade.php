<!doctype html>
<html lang="en">

<head>
    <title>Login Panel</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="shortcut icon" href="images/svg/logo-white-background.svg" type="image/x-icon">

    <link rel="stylesheet" type="text/css" href="{{ asset('warish/css/all.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('warish/css/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('warish/css/style.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('warish/css/responsive.css') }}">
</head>

<body>


    <section>
        <div class="container-certificate">
            <div class="certificate warish">
                <div class="border-1">
                    <div class="border-2">
                        <div class="content">
                            <div class="watermark">
                                <img class="mx-auto" src="{{ asset('img/logo.png') }}" alt="">
                            </div>
                            <!--Header Section  Start-->
                            <div class="top">
                                <div class="d-flex justify-content-between">
                                    <!-- Top Left Photo Section -->
                                    <div class="left">
                                        <div class="photo">
                                            <img src="{{ asset('warish/images/svg/qr-code.svg') }}" alt="">
                                        </div>
                                    </div>

                                    <!-- Top Center Title Section -->
                                    <div class="center text-center">
                                        <div class="govt-logo">
                                            <img class="mx-auto" src="{{ asset('img/logo.png') }}" alt="">
                                        </div>
                                        <div class="text">
                                            <div class="head">????????????????????? ??????????????????</div>
                                            <div class="tail">?????????????????????, ????????????????????????</div>
                                            <div class="title">????????????????????????????????? ?????????</div>
                                        </div>
                                    </div>

                                    <!-- Top Center Title Section -->
                                    <div class="right">
                                        <div class="mujib-borso ml-auto">
                                            <img class="" src="
                                                {{ asset('warish/images/svg/mujib sotoborso.svg') }}" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Header Section  End-->

                            <div class="body">
                                <div class="sub-heading-text mb-2 font-weight-bold">????????? ?????? : <span
                                        class="float-right">??????????????? ???????????????:
                                        {{ $data->date }}</span></div>
                            </div>
                            <!-- Citizen Info Start -->

                            <!-- Citizen Info End -->

                            <!-- Declaration Start -->
                            <div class="sub-heading-text text-justify my-3">
                                ????????????????????? ??? ?????? ?????????????????? ??????????????? ?????????????????? ???????????????????????????????????? ?????? ??????????????? ????????????????????????????????? ????????????????????? ??????????????????
                                ????????? ?????????????????? ??????, ?????????: {{ $data->name }},
                                @if ($data->husband_name == null)???????????? : {{ $data->father_name }}@else??????????????????: {{ $data->husband_name }}@endif, {{ $data->address }} ?????????????????? ??????????????????
                                ???????????????????????? ?????????????????? ?????????????????????????????? ???????????? ?????????????????????????????? ????????????????????????????????????????????? ???????????? ????????????
                            </div>
                            <!-- Declaration Start -->


                            <!--Citizen Info-->
                            <table class="warish">
                                <tr>
                                    <th style="width: 50px;">??????????????????</th>
                                    <th>?????????</th>
                                    <th style="width: 210px; padding: 0;">?????????????????? ????????????</th>

                                    <th style="width: 60px;">?????????????????????</th>
                                    <th style="width: 60px;">?????????????????????</th>
                                </tr>
                                @foreach ($members as $key => $row)
                                    <tr>
                                        <td>{{ $key + 1 }}</td>
                                        <td>{{ $row->warish_member_name }}</td>
                                        <td>{{ $row->member_nid }}</td>
                                        <td>{{ $row->relation }}</td>
                                        <td>{{ $row->comment }}</td>
                                    </tr>
                                @endforeach

                            </table>
                            <!--Citizen Info End-->


                            <div class="sub-heading-text text-justify my-3">
                                ????????? ????????????????????? ?????????????????? ???????????????????????? ??? ????????????????????????????????????????????? ?????????????????????????????? ??????????????? ??????????????? ????????????
                            </div>
                        </div>

                        <!-- Footer Section Start -->
                        <div class="footer">
                            <table class="mayor">
                                <tr>
                                    <td></td>
                                    <!-- Mayor Sign -->
                                    <td width="300" class="text-center">
                                        <div class="heading-text">??????????????? ????????????????????????????????????</div>
                                        <div class="sub-heading-text">????????????</div>
                                        <div class="small">????????????????????? ??????????????????</div>
                                        <div class="small">?????????????????????, ????????????????????????</div>
                                        <div class="small">????????????????????? ?????????????????????????????????</div>
                                        <div class="small">?????????????????? <span
                                                class="small">trishalpourosova@gmail.com</span>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <div class="heading-text">
                                ????????? ???????????????
                            </div>
                            <!-- Certificate Verify -->
                            <table class="mt-1" style="width: 100%;">
                                <tr>
                                    <td valign="top">
                                        <div>???) ??????????????? ???????????? : https://trishalpourosova.com</div>
                                        <div>???) ??????????????? QR ????????? ????????????????????? ???????????????</div>
                                    </td>

                                </tr>
                            </table>
                            <div class="text-center small mt-2">????????????????????? ???????????????????????????: Tech Path Limited</div>
                        </div>
                        <!-- Footer Section End -->
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>



</body>

</html>
