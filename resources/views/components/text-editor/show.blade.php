<x-text-editor.layout>


    <body class="header-fixed sidebar-fixed sidebar-dark header-light" id="body">

    <script>
        NProgress.configure({ showSpinner: false });
        NProgress.start();
    </script>

    <div class="mobile-sticky-body-overlay"></div>



    <div class="wrapper">
    <x-text-editor.sidebar/>

    <style>
        .text-editor-title {
            font-size: 24px;
            font-weight: bold;
            margin-top: 20px; /* Adding space above the title */
            margin-bottom: 20px; /* Adding space below the title */
            color: #333;
        }

        .text-editor-content {
            font-size: 16px;
            line-height: 1.5;
            color: #555;
        }

        .card-body {
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
            background-color: #fff;
            margin-top: 20px; /* Adding space above the card body */
        }

        .btn-success {
            margin-bottom: 20px;
        }
    </style>
        <div class="page-wrapper">
            <!-- Header -->


            <div class="content-wrapper">
                <div class="content">
                    <div class="row">
                            <a href="{{route('text-editor.create')}}" type="button" class=" mb-2 mr-50 btn btn-success">
                                <i class=" mdi mdi-plus-outline mr-1"></i> Add new</a>

                                <div class="card-body pt-0 pb-5">
                                    <h2 class="text-editor-title">{{ $text_editor->title }}</h2>
                                    <div class="text-editor-content">
                                        {!! $text_editor->content !!}
                                    </div>
                                </div>

                        </div>
                    </div>
                </div>




            </div>
        </x-back.layout>
