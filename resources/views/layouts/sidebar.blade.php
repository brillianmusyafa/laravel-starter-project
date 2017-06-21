<section class="sidebar">

  <!-- Sidebar user panel (optional) -->
  <div class="user-panel">
    <div class="pull-left image">
      <img src="{{asset('bower_components/AdminLTE/dist/img/user2-160x160.jpg')}}" class="img-circle" alt="User Image">
    </div>
    <div class="pull-left info">
      <p>{{Auth::user()->name}} 
      @if(Auth::user()->role_id == 2)
      ({{Auth::user()->Bidang->nama_bidang}})
      @endif
      </p>
      <!-- Status -->
      <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
    </div>
  </div>

  <!-- Sidebar Menu -->
  <ul class="sidebar-menu">
    <li class="header">Menu Utama</li>
    <!-- Optionally, you can add icons to the links -->
    <li><a href="{{url('admin/pertanyaan')}}"><i class="fa fa-hand-pointer-o"></i> <span>Data Pertanyaan</span></a></li>

    <!-- khusus untuk admin -->
    @if(Auth::user()->role_id == 1)
    <li><a href="{{url('admin/kategory')}}"><i class="fa fa-archive"></i> <span>Data Bidang</span></a></li>
    <li><a href="{{url('admin/peraturan_daerah')}}"><i class="fa fa-archive"></i> <span>Peraturan Daerah</span></a></li>
    <li><a href="{{url('admin/apbd')}}"><i class="fa fa-archive"></i> <span>APBD</span></a></li>
    <li class="treeview">
      <a href="#"><i class="fa fa-link"></i> <span>Setting</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
      <li><a href="{{url('users')}}">User</a></li>
        <li><a href="{{url('admin/role')}}">Role</a></li>
      </ul>
    </li>
    @endif
    <li><a href="{{ route('logout') }}"
      onclick="event.preventDefault();
      document.getElementById('logout-form').submit();">
      <i class="fa fa-lock"></i> Logout
    </a>

    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
      {{ csrf_field() }}
    </form></li>
  </ul>
  <!-- /.sidebar-menu -->
</section>
