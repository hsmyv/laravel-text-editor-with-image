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
            <!-- Header -->


            <div class="content-wrapper">
                <div class="content">
                    {{-- <x-text-editor.breadcrump :value="'Counters'"/> --}}

                    <div class="row">
                        <div class="col-12">
                            @if (session('success'))
                                <div class="alert alert-highlighted alert-success">
                                    {{ session('success') }}
                                </div>
                            @endif
                            @if (session('error'))
                            <div class="alert alert-danger">
                                {{ session('error') }}
                            </div>
                        @endif
                            <!-- Recent Order Table -->
                            <a href="{{route('text-editor.create')}}" type="button" class=" mb-2 mr-50 btn btn-success">
                                <i class=" mdi mdi-plus-outline mr-1"></i> Add new</a>
                            <div class="card card-table-border-none">

                                <div class="card-body pt-0 pb-5">
                                    <table class="table card-table table-responsive table-responsive-large" style="width:100%">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Title</th>
                                            <th></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($texts as $text)
                                        <tr>
                                            <td >{{$text->id}}</td>

                                            <td class="d-none d-md-table-cell"> <a href="{{ route('text-editor.show', $text->id) }}">{{$text->title ?? 'No Title'}}</a></td>
                                            <td class="text-right">
                                                <div class="dropdown show d-inline-block widget-dropdown">
                                                    <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdown-recent-order5" data-toggle="dropdown" aria-haspopup="true"
                                                       aria-expanded="false" data-display="static"></a>
                                                    <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order5">
                                                        <li class="dropdown-item">
                                                            <a href="{{ route('text-editor.edit', $text->id) }}">Edit</a>
                                                        </li>

                                                        <li class="dropdown-item">
                                                            <form action="{{ route('text-editor.destroy', $text) }}" method="POST">
                                                                @method('DELETE')
                                                                @csrf
                                                                <button type="submit">Delete</button>
                                                            </form>

                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        @endforeach

                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>




            </div>
        </x-back.layout>
