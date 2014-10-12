<%@ page import="user.SecAppUser" %>
<%@ page import="consulrima.Employee" %>

<!DOCTYPE html>
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="images/favicon.png">

    <title>Consulrima 2020</title>

    <!--Core CSS -->
    <!--Core CSS -->
    <link href="bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!--dynamic table-->
    <link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
    <link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <section id="container" >
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
                <ul class="nav pull-left top-menu" style="margin-left: 40px;color: white;">
                    <li>
                        <h3>Base de datos Consulrima Versión 1.0</h3>
                    </li>
                </ul>
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
                                <li><a href="${createLink(controller:'secAppUser', action:'show', id: SecAppUser.findByUsername(sec.loggedInUserInfo(field:'username')).id)}"><i class=" fa fa-user"></i>Perfil</a></li>
                                <li><a href="${createLink(controller:'secAppUser', action:'editPassword', id: (SecAppUser.findByUsername(sec.loggedInUserInfo(field:'username')).id*123456789-7))}"><i class=" fa fa-key"></i>Cambiar Clave</a></li>
                                <li><a href="${createLink(controller:'logout',action:'index')}"><i class="fa fa-power-off"></i>Cerrar Sesión</a></li>
                        </ul>
                    </li>
                </ul>
                <!--search & user info end-->
            </div>
        </header>
        <!--header end-->
        <aside>
            <div id="sidebar" class="nav-collapse">
                <!-- sidebar menu start-->            <div class="leftside-navigation">
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

<sec:ifAnyGranted roles="ROLE_ADMINISTRADOR">
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-laptop"></i>
                                <span>Manejo de Usuarios</span>
                            </a>
                            <ul class="sub">
                                    <li><a href="${createLink(controller:'SecAppUser', action:'create')}">Crear Usuario</a></li>
                                    <li><a href="${createLink(controller:'SecAppUser', action:'list')}">Lista de Usuarios</a></li>
                                    <li><a href="${createLink(controller:'SecAppUserSecAppRole', action:'create')}">Asignar Rol a Usuario</a></li>
                                    <li><a href="${createLink(controller:'SecAppUserSecAppRole', action:'list')}">Lista de Roles y Usuarios</a></li>
                                    <li><a href="${createLink(controller:'SecAppRole', action:'list')}">Lista de Roles</a></li>
                            </ul>
                        </li>
                        
</sec:ifAnyGranted>
                    </ul></div>        
            </div>
        </aside>
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-sm-12">
                        <section class="panel">
                            <header class="panel-heading">
                                <div class="recent-act">
                                    <h1>Registro de Trabajadores </h1>
                                </div>
                            </header>
                            <div class="panel-body">
                                <h4>
                                    Bienvenido, ¡ ${SecAppUser.findByUsername(sec.loggedInUserInfo(field:'username')).name} !
                                </h4>
                            </div>
                        </section>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="mini-stat clearfix">
                            <span class="mini-stat-icon tar"><i class="fa fa-users"></i></span>
                            <div class="mini-stat-info">
                                <span>${Employee.count()}</span>
                                Empleados Registrados
                            </div>
                        </div>
                    </div>  
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <section class="panel">
                            <div class="panel-body">
                                <div class="position-center">
                                    <g:form class="form-inline" controller="employee" action="search">
                                        <div class="form-group">
                                            <label class="sr-only" for="search">Buscar Empleado</label>
                                            <input type="text" name="q" class="form-control" id="q" placeholder="Ingresa Cédula o Nombre">
                                        </div>
                                        <button type="submit" class="btn btn-success">Buscar Empleado</button>
                                    </g:form>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </section>
 
        </section>
        <div class="right-sidebar">
            <div class="search-row">
            </div>
            <div class="right-stat-bar">
                <ul class="right-side-accordion">
                    <li class="widget-collapsible">
                        <a href="#" class="head widget-head red-bg active clearfix">
                            <span class="pull-left">work progress (5)</span>
                            <span class="pull-right widget-collapse"><i class="ico-minus"></i></span>
                        </a>
                        <ul class="widget-container">
                            <li>
                                <div class="prog-row side-mini-stat clearfix">
                                    <div class="side-graph-info">
                                        <h4>Target sell</h4>
                                    </div>
                                    <div class="side-mini-graph">
                                        <div class="target-sell">
                                        </div>
                                    </div>
                                </div>
                                <div class="prog-row side-mini-stat">
                                    <div class="side-graph-info">
                                        <h4>product delivery</h4>
                                        <p>
                                            55%, Deadline 12 june 13
                                        </p>
                                    </div>
                                    <div class="side-mini-graph">
                                        <div class="p-delivery">
                                            <div class="sparkline" data-type="bar" data-resize="true" data-height="30" data-width="90%" data-bar-color="#39b7ab" data-bar-width="5" data-data="[200,135,667,333,526,996,564,123,890,564,455]">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="prog-row side-mini-stat">
                                    <div class="side-graph-info payment-info">
                                        <h4>payment collection</h4>
                                        <p>
                                            25%, Deadline 12 june 13
                                        </p>
                                    </div>
                                    <div class="side-mini-graph">
                                        <div class="p-collection">
                                            <span class="pc-epie-chart" data-percent="45">
                                                <span class="percent"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="prog-row side-mini-stat">
                                    <div class="side-graph-info">
                                        <h4>delivery pending</h4>
                                        <p>
                                            44%, Deadline 12 june 13
                                        </p>
                                    </div>
                                    <div class="side-mini-graph">
                                        <div class="d-pending">
                                        </div>
                                    </div>
                                </div>
                                <div class="prog-row side-mini-stat">
                                    <div class="col-md-12">
                                        <h4>total progress</h4>
                                        <p>
                                            50%, Deadline 12 june 13
                                        </p>
                                        <div class="progress progress-xs mtop10">
                                            <div style="width: 50%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="20" role="progressbar" class="progress-bar progress-bar-info">
                                                <span class="sr-only">50% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="widget-collapsible">
                        <a href="#" class="head widget-head terques-bg active clearfix">
                            <span class="pull-left">contact online (5)</span>
                            <span class="pull-right widget-collapse"><i class="ico-minus"></i></span>
                        </a>
                        <ul class="widget-container">
                            <li>
                                <div class="prog-row">
                                    <div class="user-thumb">
                                        <a href="#"><img src="images/avatar1_small.jpg" alt=""></a>
                                    </div>
                                    <div class="user-details">
                                        <h4><a href="#">Jonathan Smith</a></h4>
                                        <p>
                                            Work for fun
                                        </p>
                                    </div>
                                    <div class="user-status text-danger">
                                        <i class="fa fa-comments-o"></i>
                                    </div>
                                </div>
                                <div class="prog-row">
                                    <div class="user-thumb">
                                        <a href="#"><img src="images/avatar1.jpg" alt=""></a>
                                    </div>
                                    <div class="user-details">
                                        <h4><a href="#">Anjelina Joe</a></h4>
                                        <p>
                                            Available
                                        </p>
                                    </div>
                                    <div class="user-status text-success">
                                        <i class="fa fa-comments-o"></i>
                                    </div>
                                </div>
                                <div class="prog-row">
                                    <div class="user-thumb">
                                        <a href="#"><img src="images/chat-avatar2.jpg" alt=""></a>
                                    </div>
                                    <div class="user-details">
                                        <h4><a href="#">John Doe</a></h4>
                                        <p>
                                            Away from Desk
                                        </p>
                                    </div>
                                    <div class="user-status text-warning">
                                        <i class="fa fa-comments-o"></i>
                                    </div>
                                </div>
                                <div class="prog-row">
                                    <div class="user-thumb">
                                        <a href="#"><img src="images/avatar1_small.jpg" alt=""></a>
                                    </div>
                                    <div class="user-details">
                                        <h4><a href="#">Mark Henry</a></h4>
                                        <p>
                                            working
                                        </p>
                                    </div>
                                    <div class="user-status text-info">
                                        <i class="fa fa-comments-o"></i>
                                    </div>
                                </div>
                                <div class="prog-row">
                                    <div class="user-thumb">
                                        <a href="#"><img src="images/avatar1.jpg" alt=""></a>
                                    </div>
                                    <div class="user-details">
                                        <h4><a href="#">Shila Jones</a></h4>
                                        <p>
                                            Work for fun
                                        </p>
                                    </div>
                                    <div class="user-status text-danger">
                                        <i class="fa fa-comments-o"></i>
                                    </div>
                                </div>
                                <p class="text-center">
                                    <a href="#" class="view-btn">View all Contacts</a>
                                </p>
                            </li>
                        </ul>
                    </li>
                    <li class="widget-collapsible">
                        <a href="#" class="head widget-head purple-bg active">
                            <span class="pull-left"> recent activity (3)</span>
                            <span class="pull-right widget-collapse"><i class="ico-minus"></i></span>
                        </a>
                        <ul class="widget-container">
                            <li>
                                <div class="prog-row">
                                    <div class="user-thumb rsn-activity">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                    <div class="rsn-details ">
                                        <p class="text-muted">
                                            just now
                                        </p>
                                        <p>
                                            <a href="#">Jim Doe </a>Purchased new equipments for zonal office setup
                                        </p>
                                    </div>
                                </div>
                                <div class="prog-row">
                                    <div class="user-thumb rsn-activity">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                    <div class="rsn-details ">
                                        <p class="text-muted">
                                            2 min ago
                                        </p>
                                        <p>
                                            <a href="#">Jane Doe </a>Purchased new equipments for zonal office setup
                                        </p>
                                    </div>
                                </div>
                                <div class="prog-row">
                                    <div class="user-thumb rsn-activity">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                    <div class="rsn-details ">
                                        <p class="text-muted">
                                            1 day ago
                                        </p>
                                        <p>
                                            <a href="#">Jim Doe </a>Purchased new equipments for zonal office setup
                                        </p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="widget-collapsible">
                        <a href="#" class="head widget-head yellow-bg active">
                            <span class="pull-left"> shipment status</span>
                            <span class="pull-right widget-collapse"><i class="ico-minus"></i></span>
                        </a>
                        <ul class="widget-container">
                            <li>
                                <div class="col-md-12">
                                    <div class="prog-row">
                                        <p>
                                            Full sleeve baby wear (SL: 17665)
                                        </p>
                                        <div class="progress progress-xs mtop10">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="prog-row">
                                        <p>
                                            Full sleeve baby wear (SL: 17665)
                                        </p>
                                        <div class="progress progress-xs mtop10">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                                                <span class="sr-only">70% Completed</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!--right sidebar end-->

    </section>

<!-- Placed js at the end of the document so the pages load faster -->

        <script src="js/jquery.js"></script>
        <script src="js/jquery-1.8.3.min.js"></script>
        <script src="bs3/js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="js/jquery-ui-1.9.2.custom.min.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>
        <script src="js/easypiechart/jquery.easypiechart.js"></script>
        <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/jquery.nicescroll.js"></script>
        <!--Easy Pie Chart-->
        <script src="js/easypiechart/jquery.easypiechart.js"></script>
        <!--Sparkline Chart-->
        <script src="js/sparkline/jquery.sparkline.js"></script>
        <!--jQuery Flot Chart-->
        <script src="js/flot-chart/jquery.flot.js"></script>
        <script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
        <script src="js/flot-chart/jquery.flot.resize.js"></script>
        <script src="js/flot-chart/jquery.flot.pie.resize.js"></script>

<!--dynamic table-->
        <script type="text/javascript" language="javascript" src="js/advanced-datatable/js/jquery.dataTables.js"></script>
        <script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>
        <!--common script init for all pages-->
        <script src="js/scripts.js"></script>

<!--dynamic table initialization -->
        <script src="js/dynamic_table_init.js"></script>
        <script src="js/bootstrap-switch.js"></script>

        <script type="text/javascript" src="js/fuelux/js/spinner.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-fileupload/bootstrap-fileupload.js"></script>
        <script type="text/javascript" src="js/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
        <script type="text/javascript" src="js/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
        <script type="text/javascript" src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
        <script type="text/javascript" src="js/bootstrap-daterangepicker/moment.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script type="text/javascript" src="js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
        <script type="text/javascript" src="js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
        <script type="text/javascript" src="js/jquery-multi-select/js/jquery.multi-select.js"></script>
        <script type="text/javascript" src="js/jquery-multi-select/js/jquery.quicksearch.js"></script>

        <script type="text/javascript" src="js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>

        <script src="js/jquery-tags-input/jquery.tagsinput.js"></script>

        <script src="js/select2/select2.js"></script>
        <script src="js/select-init.js"></script>

        <!--common script init for all pages-->

        <script src="js/toggle-init.js"></script>

        <script src="js/advanced-form.js"></script>
        <!--Easy Pie Chart-->
        <script src="js/easypiechart/jquery.easypiechart.js"></script>
        <!--Sparkline Chart-->
        <script src="js/sparkline/jquery.sparkline.js"></script>
        <!--jQuery Flot Chart-->
        <script src="js/flot-chart/jquery.flot.js"></script>
        <script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
        <script src="js/flot-chart/jquery.flot.resize.js"></script>
        <script src="js/flot-chart/jquery.flot.pie.resize.js"></script>

</body>
</html>


