<%@ page import="user.SecAppUser" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="ThemeBucket">
        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'logo.ico')}" type="image/x-icon">
        <title>Consulrima 2020</title>
        <!--Core CSS -->
        <link rel="stylesheet" href="${resource(dir: 'bs3/css', file: 'bootstrap.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'js/jquery-ui', file: 'jquery-ui-1.10.1.custom.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-reset.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'font-awesome/css', file: 'font-awesome.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'js/jvector-map', file: 'jquery-jvectormap-1.2.2.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'clndr.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'js/css3clock/css', file: 'style.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style-responsive.css')}" type="text/css">

 <!-- Just for debugging purposes. Don't actually copy this line! -->
 <!--[if lt IE 9]>
 <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
 <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
 <!--[if lt IE 9]>
 <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
 <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
 <![endif]-->
    <r:layoutResources />
    <g:layoutHead/>
</head>
<body>
    <section id="container">
    <!--header start-->
        <header class="header fixed-top clearfix">
        <!--logo start-->
            <div class="brand">

                <a href="${createLink(uri: '/')}" class="logo">
                    
                    <img src="${resource(dir: 'images', file: 'logo2.jpg')}" alt="">
                </a>
                <div class="sidebar-toggle-box">
                    <div class="fa fa-bars"></div>
                </div>
            </div>
            <!--logo end-->
            <div class="top-nav clearfix">
                <!--search & user info start-->
                <ul class="nav pull-right top-menu">
                    <li style="margin-top:20px;">

                        <g:form controller="employee" action="search" >

                            <input type="text" name="q" class="form-control search" placeholder=" Buscar Empleado">
                        </g:form>
                    </li>
                    <!-- user login dropdown start-->
                    <li class="dropdown" style="margin-top:20px;">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-user icon-white"></i><img src="${createLink(controller:'secAppUser', action:'showImage', id: SecAppUser.findByUsername(sec.loggedInUserInfo(field:'username')).id)}" alt="" width="33" height="33"/>
                            <span class="username"><sec:loggedInUserInfo field="username" /> </span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <li><a href="${createLink(controller:'secAppUser', action:'show', id: SecAppUser.findByUsername(sec.loggedInUserInfo(field:'username')).id)}"><i class=" fa fa-suitcase"></i>Perfil</a></li>
                            <li><a href="${createLink(controller:'logout',action:'index')}"><i class="fa fa-key"></i> Cerrar Sesión</a></li>
                        </ul>
                    </li>
                </ul>
                <!--search & user info end-->
            </div>
        </header>
        <!--header end-->
        <!--sidebar start-->
        <aside>
            <div id="sidebar" class="nav-collapse">
                <!-- sidebar menu start-->
                <div class="leftside-navigation">
                    <ul class="sidebar-menu" id="nav-accordion">

                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-user"></i>
                                <span>Empleados</span>
                            </a>
                            <ul class="sub">
                                <li><a href="${createLink(controller:'employee', action:'create')}">Crear</a></li>
                                <li><a href="${createLink(controller:'employee', action:'list')}">Lista</a></li>

                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-laptop"></i>
                                <span>Cargos</span>
                            </a>
                            <ul class="sub">
                                <li><a href="${createLink(controller:'occupation', action:'create')}">Crear</a></li>
                                <li><a href="${createLink(controller:'occupation', action:'list')}">Lista</a></li>

                            </ul>
                        </li>
                        
                          <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-laptop"></i>
                                <span>Manejo de Usuarios</span>
                            </a>
                            <ul class="sub">
                                <li><a href="${createLink(controller:'SecAppUser', action:'create')}">Crear Usuario</a></li>
                                <li><a href="${createLink(controller:'SecAppUser', action:'list')}">Lista de Usuarios</a></li>
                                <li><a href="${createLink(controller:'SecAppRole', action:'create')}">Crear Rol</a></li>
                                <li><a href="${createLink(controller:'SecAppRole', action:'list')}">Lista de Roles</a></li>
                            </ul>
                        </li>

                    </ul>            
                </div>
                <!-- sidebar menu end-->
            </div>
        </aside>
        <!--sidebar end-->
        <!--main content start-->
        <section id="main-content">
            <section class="wrapper">
                <g:layoutBody />
                <r:layoutResources />
            </section>
        </section>
        <!--main content end-->

      

<!--right sidebar end-->
    </section>

<!-- Placed js at the end of the document so the pages load faster -->
<!--Core js-->
    <script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
    <script src="${resource(dir: 'js/jquery-ui', file: 'jquery-ui-1.10.1.custom.min.js')}"></script>
    <script src="${resource(dir: 'bs3/js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.dcjqaccordion.2.7.js')}"></script>
    <script class="include" src="${resource(dir: 'js', file: 'jquery.scrollTo.min.js')}"></script>
    <script src="${resource(dir: 'js/jQuery-slimScroll-1.3.0', file: 'jquery.slimscroll.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.nicescroll.js')}"></script>
    <script src="${resource(dir: 'js/skycons', file: 'skycons.js')}"></script>
    <script src="${resource(dir: 'js/jquery.scrollTo', file: 'jquery.scrollTo.js')}"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="${resource(dir: 'js/calendar', file: 'clndr.js')}"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>
    <script src="${resource(dir: 'js/calendar', file: 'moment-2.2.1.js')}"></script>
    <script src="${resource(dir: 'js', file: 'evnt.calendar.init.js')}"></script>
    <script src="${resource(dir: 'js/jvector-map', file: 'jquery-jvectormap-1.2.2.min.js')}"></script>
    <script src="${resource(dir: 'js/jvector-map', file: 'jquery-jvectormap-us-lcc-en.js')}"></script>
    <script src="${resource(dir: 'js/gauge', file: 'gauge.js')}"></script>
    <!--clock init-->
    <script src="${resource(dir: 'js/css3clock/js', file: 'css3clock.js')}"></script>
    <!--Easy Pie Chart-->
    <script src="${resource(dir: 'js/easypiechart', file: 'jquery.easypiechart.js')}"></script>
    <!--Sparkline Chart-->
    <script src="${resource(dir: 'js/sparkline', file: 'jquery.sparkline.js')}"></script>
    <!--Morris Chart-->
    <script src="${resource(dir: 'js/morris-chart', file: 'morris.js')}"></script>
    <script src="${resource(dir: 'js/morris-chart', file: 'raphael-min.js')}"></script>
    <!--jQuery Flot Chart-->
    <script src="${resource(dir: 'js/flot-chart', file: 'jquery.flot.js')}"></script>
    <script src="${resource(dir: 'js/flot-chart', file: 'jquery.flot.tooltip.min.js')}"></script>
    <script src="${resource(dir: 'js/flot-chart', file: 'jquery.flot.resize.js')}"></script>
    <script src="${resource(dir: 'js/flot-chart', file: 'jquery.flot.pie.resize.js')}"></script>
    <script src="${resource(dir: 'js/flot-chart', file: 'jquery.flot.animator.min.js')}"></script>
    <script src="${resource(dir: 'js/flot-chart', file: 'jquery.flot.growraf.js')}"></script>
    <script src="${resource(dir: 'js', file: 'dashboard.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.customSelect.min.js')}" ></script>
    <!--common script init for all pages-->
    <script src="${resource(dir: 'js', file: 'scripts.js')}"></script>
    <!--script for this page-->


<!--dynamic table-->
    <script type="text/javascript" language="javascript" src="${resource(dir: 'js/advanced-datatable/js', file: 'jquery.dataTables.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js/data-tables', file: 'DT_bootstrap.js')}"></script>

<!--dynamic table initialization -->
    <script src="${resource(dir: 'js', file: 'dynamic_table_init.js')}"></script>
    <link href="${resource(dir: 'js/advanced-datatable/css', file: 'demo_table.css')}" rel="stylesheet" />
    <link rel="stylesheet" href="${resource(dir: 'js/data-tables', file: 'DT_bootstrap.css')}" />

    <!-- Custom styles for this template -->
    <link href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'style-responsive.css')}" rel="stylesheet" />

</body>
</html>