<x-text-editor.layout>


    <body class="header-fixed sidebar-fixed sidebar-dark header-light" id="body">

    <script>
        NProgress.configure({ showSpinner: false });
        NProgress.start();
    </script>

    <div class="mobile-sticky-body-overlay"></div>



    <div class="wrapper">
        <x-text-editor.sidebar/>

        <div class="page-wrapper">

    <x-text-editor.create :languages="$languages"/>
        </div>


</x-text-editor.layout>
