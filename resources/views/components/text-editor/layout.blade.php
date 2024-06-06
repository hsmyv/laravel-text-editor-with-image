<!DOCTYPE html>
<head>
     <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="Bakı Avropa Liseyi">
    <meta name="csrf-token" content="{{ csrf_token() }}">


    <title>Text Editor</title>

    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500"
          rel="stylesheet"/>
    <link href="https://cdn.materialdesignicons.com/3.0.39/css/materialdesignicons.min.css" rel="stylesheet"/>


    <!-- PLUGINS CSS STYLE -->
    <link href="{{asset('assets/back/plugins/nprogress/nprogress.css')}}" rel="stylesheet"/>


    <link href="{{asset('assets/back/plugins/daterangepicker/daterangepicker.css')}}" rel="stylesheet" />
    <!-- No Extra plugin used -->


    <link href="{{asset('assets/back/plugins/jvectormap/jquery-jvectormap-2.0.3.css')}}" rel="stylesheet"/>


    <link href="{{asset('assets/back/plugins/daterangepicker/daterangepicker.css')}}" rel="stylesheet"/>


    <link href="{{asset('assets/back/plugins/toastr/toastr.min.css')}}" rel="stylesheet"/>


    <!-- SLEEK CSS -->
    <link id="sleek-css" rel="stylesheet" href="{{asset('assets/back/css/sleek.css')}}"/>

    <link href="https://cdn.jsdelivr.net/npm/quill@2.0.0-rc.4/dist/quill.core.css" rel="stylesheet">


    <!-- FAVICON -->
    <link href="{{asset('assets/back/img/favicon.png')}}" rel="shortcut icon"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-JbsGvCtikUpVZSweAu4GCSSTLvtV5k07w42G3futE+6frCux2+A0j6JwzB+07zK65WKi3ddtlZPZZq61+ceRyQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />




    <!--
      HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
    -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="{{asset('assets/back/plugins/nprogress/nprogress.js')}}"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
{{-- <script src="https://cdn.ckeditor.com/ckeditor5/40.2.0/classic/ckeditor.js"></script> --}}

{{-- <script src="//cdn.ckeditor.com/4.23.0-lts/full/ckeditor.js"></script> --}}
</head>

{{$slot}}


</div>
</div>

<script src="{{asset('assets/back/plugins/jquery/jquery.min.js')}}"></script>



<script src="{{asset('assets/back/plugins/slimscrollbar/jquery.slimscroll.min.js')}}"></script>
<script src="{{asset('assets/back/plugins/jekyll-search.min.js')}}"></script>



<script src="{{asset('assets/back/plugins/charts/Chart.min.js')}}"></script>



<script src="{{asset('assets/back/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js')}}"></script>
<script src="{{asset('assets/back/plugins/jvectormap/jquery-jvectormap-world-mill.js')}}"></script>



<script src="{{asset('assets/back/plugins/daterangepicker/moment.min.js')}}"></script>
<script src="{{asset('assets/back/plugins/daterangepicker/daterangepicker.js')}}"></script>



<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js" defer></script>

<script src="{{asset('assets/back/js/sleek.bundle.js')}}"></script>


</body>
