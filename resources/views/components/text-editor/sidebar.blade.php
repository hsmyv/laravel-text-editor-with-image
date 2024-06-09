
<aside class="left-sidebar bg-sidebar">
    <div id="sidebar" class="sidebar sidebar-with-footer">
        <!-- Aplication Brand -->
        <div class="app-brand">
            <a href="{{route('main.index')}}">
                <img width="180px" src="{{asset('assets/images/hslogo.png')}}">
            </a>
        </div>
        <!-- begin sidebar scrollbar -->
        <div class="sidebar-scrollbar">

            <!-- sidebar menu -->
            <ul class="nav sidebar-inner" id="sidebar-menu">



                <li  class="has-sub active" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#dashboard"
                       aria-expanded="true" aria-controls="dashboard">
                        <i class="mdi mdi-view-dashboard-outline"></i>
                        <span class="nav-text">Dashboard</span> <b class="caret"></b>
                    </a>
                    <ul  id="dashboard" class="collapse show" id="dashboard"
                         data-parent="#sidebar-menu">
                        <div class="sub-menu">
                            <li  class="{{ Request::routeIs('text-editor.*') ? 'active' : '' }}"">
                                <a class="sidenav-item-link" href="{{route('text-editor.index')}}">
                                    <span class="nav-text">Texts</span>
                                   {{-- <span class="badge badge-success">new</span> --}}
                                </a>
                            </li>

                        </div>
                    </ul>

                </li>

            </ul>

        </div>

        <hr class="separator" />


    </div>
</aside>
