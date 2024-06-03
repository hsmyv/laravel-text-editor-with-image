
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

            <div class="content-wrapper">
                <div class="content">
                    <!-- First Row  -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-default">

                                <div class="card-body">
                                    @if(session('success'))
                                <div class="alert alert-highlighted alert-success mt-3">
                                    {{ session('success') }}
                                </div>
                                @endif


                                    <form action="{{ route('text-editor.update', ['text_editor' => $text]) }}" method="POST">
                                        @csrf
                                        @method('PUT')
                                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

                                            <div class="pr-3">
                                                <a class="btn btn-success" href="{{route('text-editor.index')}}">  <i class="mdi mdi-keyboard-backspace"></i></i> Back</a>
                                            </div>

                                            @foreach($languages as $key=>$translation)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $key == 0 ? 'active' : '' }}" id="pills-home-tab" data-toggle="pill" href="#{{$translation->locale}}" role="tab" aria-controls="pills-home"
                                                   aria-selected="true">{{$translation->locale}}</a>
                                            </li>
                                            @endforeach

                                            <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
                                            <script>
                                                document.addEventListener('DOMContentLoaded', function () {
                                                     @foreach ($languages as $language )

                                              $(document).ready(function() {
                                                  $('#summary-ckeditor-{{ $language->locale }}').summernote();
                                                  });
                                                  @endforeach
                                              });
                                             </script>



                                        </ul>
                                        <div class="tab-content" id="pills-tabContent">
                                            @foreach($languages as $key => $language)
                                                <div class="tab-pane fade show {{ $key == 0 ? 'active' : '' }}" id="{{ $language->locale }}" role="tabpanel" aria-labelledby="pills-home-tab">
                                                    <div class="form-row">
                                                        <div class="col-md-12 mb-3">
                                                            <label for="validationServer03">Title</label>
                                                            <input type="text" name="translations[{{ $language->locale }}][title]" class="form-control" id="validationServer03" placeholder="Text title" value="{{ $text->getTranslation('title', $language->locale) }}" required>
                                                        </div>
                                                        <div class="col-md-12 mb-3">
                                                            <label for="exampleFormControlTextarea1">Content</label>
                                                            <textarea class="form-control" name="translations[{{ $language->locale }}][content]" id="summary-ckeditor-{{$language->locale}}" rows="10">{{ $text->getTranslation('content', $language->locale) }}</textarea>
                                                        </div>



                                                    </div>
                                                </div>
                                            @endforeach

                                        </div>


                                            <button class="btn btn-primary" type="submit">Save Changes</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>




                </div>
        </div>


</x-text-editor.layout>


