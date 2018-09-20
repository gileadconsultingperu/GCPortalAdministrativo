<%@page import="gilead.portal.model.BeanUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String ID = (String) session.getAttribute("ID");
    BeanUsuario usuario = (BeanUsuario) session.getAttribute("usuario");
%>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>GC FACTURA - Dashboard</title>

        <meta name="description" content="overview &amp; stats" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="../../css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../font-awesome/4.5.0/css/font-awesome.min.css" />

        <!-- page specific plugin styles -->

        <!-- text fonts -->
        <link rel="stylesheet" href="../../css/fonts.googleapis.com.css" />

        <!-- ace styles -->
        <link rel="stylesheet" href="../../css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

        <!--[if lte IE 9]>
                <link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
        <![endif]-->
        <link rel="stylesheet" href="../../css/ace-skins.min.css" />
        <link rel="stylesheet" href="../../css/ace-rtl.min.css" />

        <!--[if lte IE 9]>
          <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
        <![endif]-->

        <!-- inline styles related to this page -->

        <!-- ace settings handler -->
        <script src="../../js/ace-extra.min.js"></script>

        <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

        <!--[if lte IE 8]>
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="no-skin">
        <%
            if ((ID != null) && (usuario != null)
                    && (ID == session.getId())
                    && (usuario.getAcceso().equals("ADMIN"))) {
        %>
        <div id="navbar" class="navbar navbar-default          ace-save-state">
            <div class="navbar-container ace-save-state" id="navbar-container">
                <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
                    <span class="sr-only">Toggle sidebar</span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>
                </button>

                <div class="navbar-header pull-left">
                    <a href="../../index.jsp" class="navbar-brand">
                        <small>
                            <%--<i class="fa fa-leaf"></i>--%>
                            Facturación Electrónica -  Portal Administrativo
                        </small>
                    </a>
                </div>

                <div class="navbar-buttons navbar-header pull-right" role="navigation">
                    <ul class="nav ace-nav">

                        <li class="light-blue dropdown-modal">
                            <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                                <img class="nav-user-photo" src="../../images/avatars/avatar2.png" alt="Jason's Photo" />
                                <span class="user-info">
                                    <small>Bienvenido,</small>
                                    Jason
                                </span>

                                <i class="ace-icon fa fa-caret-down"></i>
                            </a>

                            <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                                <li>
                                    <a href="GCPortal_Perfil.jsp">
                                        <i class="ace-icon fa fa-info-circle"></i>
                                        Perfil
                                    </a>
                                </li>

                                <li class="divider"></li>

                                <li>
                                    <a href="../../Logout">
                                        <i class="ace-icon fa fa-power-off"></i>
                                        Cerrar Sesión
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div><!-- /.navbar-container -->
        </div>

        <div class="main-container ace-save-state" id="main-container">
            <script type="text/javascript">
                try {
                    ace.settings.loadState('main-container')
                } catch (e) {
                }
            </script>

            <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
                <script type="text/javascript">
                    try {
                        ace.settings.loadState('sidebar')
                    } catch (e) {
                    }
                </script>

                <ul class="nav nav-list">
                    <li class="active">
                        <a href="index.jsp">
                            <i class="menu-icon fa fa-tachometer"></i>
                            <span class="menu-text"> Dashboard </span>
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-newspaper-o"></i>
                            <span class="menu-text">
                                Comprobantes
                            </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="typography.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Ver Facturas, Boletas y Notas
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>
                    
                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-ban"></i>
                            <span class="menu-text"> Anulaciones </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="tables.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Ver Anulaciones
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="jqgrid.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Comunicación de Baja
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-list"></i>
                            <span class="menu-text"> Resumen Diario </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="tables.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Generar Resumen Diario
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="jqgrid.html">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Ver Resumen Diario de Boletas y Notas
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>
                    
                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-cogs"></i>
                            <span class="menu-text"> Mantenimientos </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="GCPortal_Perfil.jsp">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Perfil
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="GCPortal_MantenimientoUsuario.jsp">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Usuarios
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                </ul><!-- /.nav-list -->

                <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
                    <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
                </div>
            </div>

            <div class="main-content">
                <div class="main-content-inner">
                    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                        <ul class="breadcrumb">
                            <li>
                                <i class="ace-icon fa fa-home home-icon"></i>
                                <a href="#">Inicio</a>
                            </li>
                            <li class="active">Dashboard</li>
                        </ul><!-- /.breadcrumb -->

                    </div>

                    <div class="page-content">
                        
                        <div class="page-header">
                            <h1>
                                Dashboard
                                <small>
                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                    overview &amp; stats
                                </small>
                            </h1>
                        </div><!-- /.page-header -->

                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->
                                <div class="alert alert-block alert-success">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <i class="ace-icon fa fa-times"></i>
                                    </button>

                                    <i class="ace-icon fa fa-check green"></i>

                                    Welcome to
                                    <strong class="green">
                                        Ace
                                        <small>(v1.4)</small>
                                    </strong>,
                                    лёгкий, многофункциональный и простой в использовании шаблон для админки на bootstrap 3.3.6. Загрузить исходники с <a href="https://github.com/bopoda/ace">github</a> (with minified ace js/css files).
                                </div>

                                <div class="row">
                                    <div class="space-6"></div>

                                    <div class="col-sm-7 infobox-container">
                                        <div class="infobox infobox-green">
                                            <div class="infobox-icon">
                                                <i class="ace-icon fa fa-comments"></i>
                                            </div>

                                            <div class="infobox-data">
                                                <span class="infobox-data-number">32</span>
                                                <div class="infobox-content">comments + 2 reviews</div>
                                            </div>

                                            <div class="stat stat-success">8%</div>
                                        </div>

                                        <div class="infobox infobox-blue">
                                            <div class="infobox-icon">
                                                <i class="ace-icon fa fa-twitter"></i>
                                            </div>

                                            <div class="infobox-data">
                                                <span class="infobox-data-number">11</span>
                                                <div class="infobox-content">new followers</div>
                                            </div>

                                            <div class="badge badge-success">
                                                +32%
                                                <i class="ace-icon fa fa-arrow-up"></i>
                                            </div>
                                        </div>

                                        <div class="infobox infobox-pink">
                                            <div class="infobox-icon">
                                                <i class="ace-icon fa fa-shopping-cart"></i>
                                            </div>

                                            <div class="infobox-data">
                                                <span class="infobox-data-number">8</span>
                                                <div class="infobox-content">new orders</div>
                                            </div>
                                            <div class="stat stat-important">4%</div>
                                        </div>

                                        <div class="infobox infobox-red">
                                            <div class="infobox-icon">
                                                <i class="ace-icon fa fa-flask"></i>
                                            </div>

                                            <div class="infobox-data">
                                                <span class="infobox-data-number">7</span>
                                                <div class="infobox-content">experiments</div>
                                            </div>
                                        </div>

                                        <div class="infobox infobox-orange2">
                                            <div class="infobox-chart">
                                                <span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
                                            </div>

                                            <div class="infobox-data">
                                                <span class="infobox-data-number">6,251</span>
                                                <div class="infobox-content">pageviews</div>
                                            </div>

                                            <div class="badge badge-success">
                                                7.2%
                                                <i class="ace-icon fa fa-arrow-up"></i>
                                            </div>
                                        </div>

                                        <div class="infobox infobox-blue2">
                                            <div class="infobox-progress">
                                                <div class="easy-pie-chart percentage" data-percent="42" data-size="46">
                                                    <span class="percent">42</span>%
                                                </div>
                                            </div>

                                            <div class="infobox-data">
                                                <span class="infobox-text">traffic used</span>

                                                <div class="infobox-content">
                                                    <span class="bigger-110">~</span>
                                                    58GB remaining
                                                </div>
                                            </div>
                                        </div>

                                        <div class="space-6"></div>

                                        <div class="infobox infobox-green infobox-small infobox-dark">
                                            <div class="infobox-progress">
                                                <div class="easy-pie-chart percentage" data-percent="61" data-size="39">
                                                    <span class="percent">61</span>%
                                                </div>
                                            </div>

                                            <div class="infobox-data">
                                                <div class="infobox-content">Task</div>
                                                <div class="infobox-content">Completion</div>
                                            </div>
                                        </div>

                                        <div class="infobox infobox-blue infobox-small infobox-dark">
                                            <div class="infobox-chart">
                                                <span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
                                            </div>

                                            <div class="infobox-data">
                                                <div class="infobox-content">Earnings</div>
                                                <div class="infobox-content">$32,000</div>
                                            </div>
                                        </div>

                                        <div class="infobox infobox-grey infobox-small infobox-dark">
                                            <div class="infobox-icon">
                                                <i class="ace-icon fa fa-download"></i>
                                            </div>

                                            <div class="infobox-data">
                                                <div class="infobox-content">Downloads</div>
                                                <div class="infobox-content">1,205</div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="vspace-12-sm"></div>

                                    <div class="col-sm-5">
                                        <div class="widget-box">
                                            <div class="widget-header widget-header-flat widget-header-small">
                                                <h5 class="widget-title">
                                                    <i class="ace-icon fa fa-signal"></i>
                                                    Traffic Sources
                                                </h5>

                                                <div class="widget-toolbar no-border">
                                                    <div class="inline dropdown-hover">
                                                        <button class="btn btn-minier btn-primary">
                                                            This Week
                                                            <i class="ace-icon fa fa-angle-down icon-on-right bigger-110"></i>
                                                        </button>

                                                        <ul class="dropdown-menu dropdown-menu-right dropdown-125 dropdown-lighter dropdown-close dropdown-caret">
                                                            <li class="active">
                                                                <a href="#" class="blue">
                                                                    <i class="ace-icon fa fa-caret-right bigger-110">&nbsp;</i>
                                                                    This Week
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#">
                                                                    <i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
                                                                    Last Week
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#">
                                                                    <i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
                                                                    This Month
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#">
                                                                    <i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
                                                                    Last Month
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <div id="piechart-placeholder"></div>

                                                    <div class="hr hr8 hr-double"></div>

                                                    <div class="clearfix">
                                                        <div class="grid3">
                                                            <span class="grey">
                                                                <i class="ace-icon fa fa-facebook-square fa-2x blue"></i>
                                                                &nbsp; likes
                                                            </span>
                                                            <h4 class="bigger pull-right">1,255</h4>
                                                        </div>

                                                        <div class="grid3">
                                                            <span class="grey">
                                                                <i class="ace-icon fa fa-twitter-square fa-2x purple"></i>
                                                                &nbsp; tweets
                                                            </span>
                                                            <h4 class="bigger pull-right">941</h4>
                                                        </div>

                                                        <div class="grid3">
                                                            <span class="grey">
                                                                <i class="ace-icon fa fa-pinterest-square fa-2x red"></i>
                                                                &nbsp; pins
                                                            </span>
                                                            <h4 class="bigger pull-right">1,050</h4>
                                                        </div>
                                                    </div>
                                                </div><!-- /.widget-main -->
                                            </div><!-- /.widget-body -->
                                        </div><!-- /.widget-box -->
                                    </div><!-- /.col -->
                                </div><!-- /.row -->

                                <!-- PAGE CONTENT ENDS -->
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                </div>
            </div><!-- /.main-content -->

            <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
            </a>
        </div><!-- /.main-container -->


        <!-- basic scripts -->

        <!--[if !IE]> -->
        <script src="../../js/jquery-2.1.4.min.js"></script>

        <!-- <![endif]-->

        <!--[if IE]>
        <script src="assets/js/jquery-1.11.3.min.js"></script>
        <![endif]-->
        <script type="text/javascript">
                    if ('ontouchstart' in document.documentElement)
                        document.write("<script src='../../js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
        </script>
        <script src="../../js/bootstrap.min.js"></script>

        <!-- page specific plugin scripts -->

        <!--[if lte IE 8]>
        <script src="assets/js/excanvas.min.js"></script>
        <![endif]-->
        <script src="../../js/jquery-ui.custom.min.js"></script>
        <script src="../../js/jquery.ui.touch-punch.min.js"></script>
        <script src="../../js/jquery.easypiechart.min.js"></script>
        <script src="../../js/jquery.sparkline.index.min.js"></script>
        <script src="../../js/jquery.flot.min.js"></script>
        <script src="../../js/jquery.flot.pie.min.js"></script>
        <script src="../../js/jquery.flot.resize.min.js"></script>

        <!-- ace scripts -->
        <script src="../../js/ace-elements.min.js"></script>
        <script src="../../js/ace.min.js"></script>
    </body>
    <%
        } else {
            response.sendRedirect("../");
        }
    %>
</html>
