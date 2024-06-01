@props(['languages'])
<div class="content-wrapper">
    <div class="content">
        <div class="breadcrumb-wrapper">


            <nav aria-label="breadcrumb">
                <ol class="breadcrumb p-0">
                    <li class="breadcrumb-item">
                        <a href="#">
                            <span class="mdi mdi-home"></span>
                        </a>
                    </li>
                    <li class="breadcrumb-item">
                       Dashboard
                    </li>
                    <li class="breadcrumb-item" aria-current="page">Text Editor</li>

                </ol>
            </nav>

        </div>
                <!-- First Row  -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card card-default">
                    <div class="card-body">
                        @if(session('error'))
                        <div class="alert alert-danger mt-3">
                            {{ session('error') }}
                        </div>
                    @endif
                        <form action="" method="POST" enctype="multipart/form-data" >
                            @csrf
                            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                <div class="pr-3">
                                    <a class="btn btn-success" href="">  <i class="mdi mdi-keyboard-backspace"></i></i> Back</a>
                                </div>
                                @foreach($languages as $key=>$language)
                                    <li class="nav-item">
                                        <a class="nav-link {{ $key == 0 ? 'active' : '' }}" id="pills-home-tab" data-toggle="pill" href="#{{$language->locale}}" role="tab" aria-controls="pills-home"
                                           aria-selected="true">{{$language->locale}}</a>

                                    </li>
                                @endforeach

                               <script>
                                  document.addEventListener('DOMContentLoaded', function () {
                                       @foreach ($languages as $language )

                                            $(document).ready(function() {
                                                $('#summary-ckeditor-{{ $language->locale }}').summernote({
                                                    height: 300,
                                                });
                                                });
                                    @endforeach
                                });
                               </script>


                            </ul>
                            <div class="tab-content" id="pills-tabContent">
                                @foreach($languages as $key=>$language)
                                    <div class="tab-pane fade show {{ $key == 0 ? 'active' : '' }}" id="{{$language->locale}}" role="tabpanel" aria-labelledby="pills-home-tab">
                                        <div class="form-row">
                                            <div class="col-md-12 mb-3">
                                                <label for="validationServer03">Title</label>
                                                <input type="text" name="translations[{{$language->locale}}][title]" class="form-control" id="validationServer03" placeholder="Page title" required>
                                            </div>
                                            @error('translations.' . $language->locale . '.title')
                                                <div class="alert alert-danger">{{ $message }}</div>
                                            @enderror
                                            <div class="col-md-12 mb-3">
                                                <label for="exampleFormControlTextarea1">Content</label>
                                                <textarea class="form-control" name="translations[{{$language->locale}}][content]" id="summary-ckeditor-{{$language->locale}}" rows="10"></textarea>
                                            </div>

                                            @error('translations.' . $language->locale . '.content')
                                            <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                        </div>
                                    </div>
                                @endforeach
                            </div>

                            <button class="btn btn-primary" type="submit">Create</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>




</div>
