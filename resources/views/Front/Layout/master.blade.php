<?php
$toptitle = DB::table('presetdatas')->where('datatype', 'title')->first();
$domain = DB::table('presetdatas')->where('datatype', 'domain')->first();
$url = URL::current();
$urlpath = explode($domain->dataname, $url);
if (!empty($urlpath[1])) {
    $urldata = $urlpath[1];
    if ($urldata == "homestead-registration" or $urldata == 'business-registration' or $urldata == 'commercial-holding') {
        $regpage = 'Yes';
    } else {
        $regpage = 'No';
    }
} else {
    $regpage = 'No';
}
?>
<!doctype html>
<html lang="en">
    <head>
        @if($regpage=='No')
        <title>{{$toptitle->dataname}}</title>
        @else
        <title>@yield('title') | {{$toptitle->dataname}}</title>
        @endif
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="shortcut icon" href="{{ asset('img') }}/logo.svg" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="{{ asset('Front') }}/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="{{ asset('Front') }}/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="{{ asset('Front') }}/css/style.css">
        <link rel="stylesheet" type="text/css" href="{{ asset('Front') }}/css/responsive.css">
        @yield('css')
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body id="home-page">
        <header id="header">
            <div class="container">
                <div class="header-section">
                    <!-- Header Logo Start  -->
                    <div id="my-carousel" class="carousel face" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <a href="{{URL::to('/')}}">
                                    <img class="d-block img-fluid" src="{{ asset('img') }}/logo-bn.png" alt="">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a href="{{URL::to('/')}}">
                                    <img class="d-block img-fluid" src="{{ asset('img') }}/logo-en.png" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Header Logo End  -->
                </div>
            </div>
        </header>
        @include('Front.Layout.Include.navbar')
        @include('Front.Layout.Include.marquee')
        <section id="main" class="mt-2 mt-md-3">
            <div class="container">
                @if($regpage=='Yes')
                <div class="form-row">
                    @yield('content')
                </div>
                @else 
                <div class="form-row">
                    <!-- Left Column Start -->
                    <div class="col-md-3 order-md-1 order-2" id="left">
                        @include('Front.Layout.Include.left-sidebar')
                    </div>
                    <!-- Left Column End -->
                    <!-- Content Column End -->
                    <div class="col-md-6 order-md-2 order-1" id="content">
                        <div>
                            @yield('content')
                        </div>
                    </div>
                    <!-- Content Column End -->
                    <!-- Right Column Start -->
                    <div class="col-md-3 order-3">
                        <div id="right-sidebar">
                            @include('Front.Layout.Include.right-sidebar')
                        </div>
                    </div>
                    <!-- Right Column End -->
                </div>
                @endif
            </div>
        </section>
        <footer id="footer">
            <div class="container">
                <div class="footer text-center py-5">
                    <div> Copyright &copy; 2021</div>
                    <div class="mt-3">
                        কারিগরি সহযোগিতায়
                        <div>
                            <a href="#">
                                <img class="d-block mx-auto" width="120"
                                     src="{{ asset('Front') }}/images/svg/Tech Path Limited Logo.svg" alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <!--<script type="text/javascript" src="{{ asset('Front') }}/js/jquery-3.5.1.slim.min.js"></script>-->
        <script type="text/javascript" src="{{ asset('Front') }}/js/popper.min.js"></script>
        <script type="text/javascript" src="{{ asset('Front') }}/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="{{ asset('Front') }}/js/custom.js"></script>
        @yield('js')
    </body>

</html>
