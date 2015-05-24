<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<body>
<!--[if lt IE 9]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<!-- .page-navbar -->
<div id="header" class="page-navbar">
    <!-- .navbar-brand -->
    <a href="index.html" class="navbar-brand hidden-xs hidden-sm">
        <h3>A&SO</h3>
    </a>
    <!-- / navbar-brand -->
    <!-- .no-collapse -->
    <div id="navbar-no-collapse" class="navbar-no-collapse">
       
        <!-- top left nav -->
        <ul class="nav navbar-nav">
            <li class="toggle-sidebar">
                <a href="#">
                    <i class="fa fa-reorder"></i>
                    <span class="sr-only">Collapse sidebar</span>
                </a>
            </li>
        </ul>
        
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="login.html">
                    <i class="fa fa-power-off"></i>
                    <span class="sr-only">Logout</span>
                </a>
            </li>
            <li>
                        <a id="toggle-right-sidebar" href="#" class="tipB" title="Toggle right sidebar">
                            <i class="l-software-layout-sidebar-right"></i>
                            <span class="sr-only">Toggle right sidebar</span>
                        </a>
                    </li>
        </ul>
        <!-- / top right nav -->
    </div>
    <!-- / collapse -->
</div>
<!-- / page-navbar -->
<!-- #wrapper -->
<div id="wrapper">
    <!-- .page-sidebar -->
    <aside id="sidebar" class="page-sidebar hidden-md hidden-sm hidden-xs">
        <!-- Start .sidebar-inner -->
        <div class="sidebar-inner">
            <!-- Start .sidebar-scrollarea -->
            <div class="sidebar-scrollarea">
                <!-- / .sidebar-panel -->
                <div class="user-info clearfix">
                    <img src="img/avatars/128.jpg" alt="avatar">
                    <span class="name">User Name</span>
                    <div class="btn-group">
                       
                    </div>
                </div>
                
                <!--  .sidebar-panel -->
                <div class="sidebar-panel">
                    <h5 class="sidebar-panel-title">Navigation</h5>
                </div>
                <!-- / .sidebar-panel -->
                <!-- .side-nav -->
                <div class="side-nav">
                    <ul class="nav">
                        <li class="hasSub highlight-menu">
                            <a class="expand active-state" href="#"><i class="l-basic-laptop"></i> <span class="txt">Monitoreo</span></a>
                            <ul class="sub show" style="display: block;">
                                <li><a href="<c:url value="/getDash"/>"><span class="txt">Dashboard</span></a>
                                </li>
                                <li><a href="<c:url value="/project"/>"><span class="txt">Proyecto</span></a>
                                </li>
                                <li><a href="<c:url value="/quoted"/>"><span class="txt">Cotizacion</span></a>
                                </li>
                                <li><a href="<c:url value="/monitoring"/>"><span class="txt">Monitoreo </span></a>
                                </li>
                                <li><a href="charts-other.html"><span class="txt">Cierre</span></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="l-software-layers2"></i><span class="txt">Clientes </span></a>
                            <ul class="sub">
                                <li><a href="icons.html"><span class="txt">Nuevo</span></a>
                                </li>
                                <li><a href="typography.html"><span class="txt">Listar</span></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- / side-nav -->
            </div>
            <!-- End .sidebar-scrollarea -->
        </div>
        <!-- End .sidebar-inner -->
    </aside>
    <!-- / page-sidebar -->
    <!-- Start #right-sidebar -->
            <aside id="right-sidebar" class="right-sidebar hidden-md hidden-sm hidden-xs">
                <!-- Start .sidebar-inner -->
                <div class="sidebar-inner">
                    <!-- Start .sidebar-scrollarea -->
                    <div class="sidebar-scrollarea">
                        <div class="tabs">
                            <!-- Start .rs tabs -->
                            <ul id="rstab" class="nav nav-tabs nav-justified">
                                <li class="active">
                                    <a href="#activity" data-toggle="tab"><i class="glyphicon glyphicon-bullhorn"></i> </a>
                                </li>
                                <li>
                                    <a href="#users" data-toggle="tab"><i class="fa fa-comments"></i> </a>
                                </li>
                            </ul>
                            <div id="rstab-content" class="tab-content">
                                <div class="tab-pane fade active in" id="activity">
                                </div>
                                <div class="tab-pane fade" id="users">
                                    <div class="chat-user-list">
                                        
                                        <div id="chat-write">
                                            <form id="chat-write-form" class="form-vertical" role="form">
                                                <div class="form-group mb5">
                                                    <textarea name="writetext" id="chatwritearea" rows="3" class="form-control" placeholder="Type message ..."></textarea>
                                                </div>
                                                <!-- End .form-group  -->
                                                <div class="form-group mb0">
                                                    <a href="#" class="btn btn-link btn-sm p0 mr5 color-gray"><i class="fa fa-picture-o"></i> </a>
                                                    <a href="#" class="btn btn-link btn-sm p0 color-gray"><i class="fa fa-file"></i> </a>
                                                    <a href="#" class="btn btn-default btn-sm pull-right">Send</a>
                                                </div>
                                                <!-- End .form-group  -->
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End .rs tabs -->
                    </div>
                    <!-- End .sidebar-scrollarea -->
                </div>
                <!-- End .sidebar-inner -->
            </aside>
            <!-- End #right-sidebar -->