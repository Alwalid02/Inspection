<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="{{asset('assets/uploads').'/'. Auth::user()->company->light_logo}}" alt="AdminLTE Logo" class="brand-image ">
      <span class="brand-text font-weight-light">{{Auth::user()->company->name}}</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{asset('assets/uploads').'/'.Auth::user()->profile_image}}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">{{ Auth::user()->name }}</a>
          
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

      
      {{-- Dashboard --}}
      <li class="nav-item">
        <a href="{{route('home')}}" class="nav-link">
          <i class="nav-icon fas fa-home"></i>
          <p>
            الرئيسية
            {{-- {{__('Dashboard')}} --}}
          </p>
        </a>
      </li>
      {{-- Parties --}}
      <li class="nav-item has-treeview ">
        <a href="#" class="nav-link">
          <i class="nav-icon fas fa-users"></i>
          <p>
            الشركاء
            <i class="right fas fa-angle-left"></i>
          </p>
        </a>
        <ul class="nav nav-treeview">
          <li class="nav-item">
            <a href="{{route('customers.index')}}" class="nav-link active">
              <i class="far fa-circle nav-icon"></i>
              <p> العملاء</p>
            </a>
          </li>
         
        </ul>
      </li>
    
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>