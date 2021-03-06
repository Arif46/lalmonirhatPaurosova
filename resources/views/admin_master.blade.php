<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>লালমনিরহাট পৌরসভা ম্যানেজমেন্ট সিষ্টেম</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- global css -->
    <link rel="shortcut icon" href="{{ asset('img/logo.svg') }}" type="image/x-icon">

    <!-- global css -->
    <link rel="stylesheet" type="text/css" href="{{ asset('new_dash/css/all.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('new_dash/css/app.css') }}" />
    <link rel="stylesheet" type="text/css"
        href="{{ asset('new_dash/vendors/datatables/css/dataTables.bootstrap4.css') }}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('new_dash/css/custom_css/datatables_custom.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('new_dash/css/responsive.dataTables.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('new_dash/css/custom.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('new_dash/css/responsive.css') }}">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/css/toastr.css" rel="stylesheet" />


</head>

<body class="skin-default">
    <!--<div class="preloader">-->
    <!--    <div class="loader_img"><img src="{{ asset('new_dash/img/loader.gif') }}" alt="loader" height="64" width="64">-->
    <!--    </div>-->
    <!--</div>-->
    <!-- header logo: style can be found in header-->
    <header class="header">
        @include('admin_include.topbar')
    </header>


    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->

        <aside class="left-side sidebar-offcanvas">
            <!-- sidebar: style can be found in sidebar-->
            <section class="sidebar">
                <div id="menu" role="navigation" class="mt-3">
                    @if (Auth::user()->role == 'Super Admin')
                        @include('admin_include.admin_sidebar')
                    @else

                    @endif
                    <!-- / .navigation -->
                </div>
                <!-- menu -->
            </section>
            <!-- /.sidebar -->
        </aside>


        <aside class="right-side">
            @yield('top-header')
            {{-- dashboard --}}
            <div class="content">
                <div class="waterMarkLogo d-flex justify-content-center">
                    <img src="{{ asset('new_dash/img/Digital Bangladesh.svg') }}" alt="">
                </div>
                @yield('admin_content')
            </div>

            {{-- dashboard --}}
        </aside>
        <!-- /.right-side -->
    </div>
    <!-- ./wrapper -->
    <!-- global js -->
    <div id="qn"></div>


    <script src="{{ asset('new_dash/js/app.js') }}" type="text/javascript"></script>
    <script type="text/javascript" src="{{ asset('new_dash/vendors/datatables/js/jquery.dataTables.js') }}"></script>
    <script type="text/javascript" src="{{ asset('new_dash/vendors/datatables/js/dataTables.bootstrap4.js') }}"></script>
    <script type="text/javascript" src="{{ asset('new_dash/js/dataTables.responsive.min.js') }}"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script src="{{ asset('new_dash/js/custom.js') }}" type="text/javascript"></script>

    <!-- jQuery -->

    <script>
        $(document).ready(function() {
            $('form').attr('autocomplete', 'off');
        });
        $.widget.bridge('uibutton', $.ui.button)
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/js/toastr.js"></script>



    <script>
        @if (Session::has('messege'))
            var type = "{{ Session::get('alert-type', 'info') }}"
            switch (type){
            case 'info':
            toastr.info("{{ Session::get('messege') }}");
            break;
            case 'success':
            toastr.success("{{ Session::get('messege') }}");
            break;
            case 'warning':
            toastr.warning("{{ Session::get('messege') }}");
            break;
            case 'error':
            toastr.error("{{ Session::get('messege') }}");
            break;
            }
        @endif
    </script>

    <script>
        $(document).ready(function() {
            var val_store = localStorage.getItem("val");
            if (val_store == 'widget') {
                $("#widget").attr('class', 'nav-link active');
            } else if (val_store == 'add_bosot_bari') {
                $("#add_bosot_bari").attr("class", "nav-link active");
                $("#layout_open_close").attr("class", "nav-item has-treeview menu-open");
                $("#bosot_bari_open_close").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'all_bosot_bari') {
                $("#all_bosot_bari").attr("class", "nav-link active");
                $("#layout_open_close").attr("class", "nav-item has-treeview menu-open");
                $("#bosot_bari_open_close").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'active_member') {
                $("#active_member").attr("class", "nav-link active");
                $("#layout_open_close").attr("class", "nav-item has-treeview menu-open");
                $("#bosot_bari_open_close").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'create_chairmen') {
                $("#create_chairmen").attr('class', 'nav-link active');
                $("#onnano_setup").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'post_code_setup') {
                $("#post_code_setup").attr('class', 'nav-link active');
                $("#onnano_setup").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'post_office') {
                $("#post_office").attr('class', 'nav-link active');
                $("#onnano_setup").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'ward') {
                $("#ward").attr('class', 'nav-link active');
                $("#onnano_setup").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'village') {
                $("#village").attr('class', 'nav-link active');
                $("#onnano_setup").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'occupation') {
                $("#occupation").attr('class', 'nav-link active');
                $("#onnano_setup").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'house_type') {
                $("#house_type").attr('class', 'nav-link active');
                $("#rate_open_close").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'house_type_rate') {
                $("#house_type_rate").attr('class', 'nav-link active');
                $("#rate_open_close").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'business_holding') {
                $("#business_holding").attr('class', 'nav-link active');
                $("#rate_open_close").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'business_type') {
                $("#business_type").attr('class', 'nav-link active');
                $("#onnano_setup").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'trade') {
                $("#trade").attr('class', 'nav-link active');
                $("#rate_open_close").attr("class", "nav-item has-treeview menu-open");
            } else if (val_store == 'logout') {
                localStorage.removeItem("val");
            }

            $(document).on("click", ".menu_name", function() {
                var val = $(this).attr("id");
                localStorage.setItem("val", val);
            });
        });
        $(function() {
            // Summernote
            $('#summernote').summernote()

            // CodeMirror
            CodeMirror.fromTextArea(document.getElementById("codeMirrorDemo"), {
                mode: "htmlmixed",
                theme: "monokai"
            });
        });
    </script>

    <script src="{{ asset('https://unpkg.com/sweetalert/dist/sweetalert.min.js') }}"></script>

    <script>
        $(document).on("click", "#delete", function(e) {
            e.preventDefault();
            var link = $(this).attr("href");
            swal({
                    title: "Are you Want to delete?",
                    text: "Once Delete, This will be Permanently Delete!",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                })
                .then((willDelete) => {
                    if (willDelete) {
                        window.location.href = link;
                    } else {
                        swal("Safe Data!");
                    }
                });
        });
    </script>

</body>

</html>
