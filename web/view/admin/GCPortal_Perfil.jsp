<%-- 
    Compañia    : Gilad Consulting S.A.C.
    Proyecto    : Portal Administrativo
    Documento   : GCPortal_Perfil
    Creado      : 21/08/2018, 08:19:09 AM
    Autor       : Luis Rosales
    Descripcion : Perfil del usuario
--%>
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
        <title>Form Elements - Ace Admin</title>

        <meta name="description" content="Common form elements and layouts" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="../../css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../font-awesome/4.5.0/css/font-awesome.min.css" />

        <!-- page specific plugin styles -->
        <link rel="stylesheet" href="../../css/jquery-ui.custom.min.css" />
        <link rel="stylesheet" href="../../css/chosen.min.css" />
        <link rel="stylesheet" href="../../css/bootstrap-datepicker3.min.css" />
        <link rel="stylesheet" href="../../css/bootstrap-timepicker.min.css" />
        <link rel="stylesheet" href="../../css/daterangepicker.min.css" />
        <link rel="stylesheet" href="../../css/bootstrap-datetimepicker.min.css" />
        <link rel="stylesheet" href="../../css/bootstrap-colorpicker.min.css" />

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
        <div id="navbar" class="navbar navbar-default ace-save-state">
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

                    <li class="active open">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-cogs"></i>
                            <span class="menu-text"> Mantenimientos </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="active">
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
                            <li>
                                <a href="#">Mantenimientos</a>
                            </li>
                            <li class="active">Perfil</li>
                        </ul><!-- /.breadcrumb -->

                    </div>

                    <div class="page-content">

                        <div class="page-header">
                            <h1>
                                Perfil
                                <small>
                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                    Jason
                                </small>
                            </h1>
                        </div><!-- /.page-header -->

                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->
                                <form class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1"> Usuario </label>

                                        <div class="col-sm-8">
                                            <input type="text" id="form-field-1" placeholder="JPEREZ" class="col-xs-10 col-sm-5" />
                                        </div>
                                    </div>

                                    <div class="space-4"></div>

                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1"> Nombres </label>

                                        <div class="col-sm-8">
                                            <input type="text" id="form-field-1" placeholder="JUAN MANUEL" class="col-xs-10 col-sm-5" />
                                        </div>
                                    </div>

                                    <div class="space-4"></div>

                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1"> Apellidos </label>

                                        <div class="col-sm-8">
                                            <input type="text" id="form-field-1" placeholder="PEREZ SANCHEZ" class="col-xs-10 col-sm-5" />
                                        </div>
                                    </div>

                                    <div class="space-4"></div>

                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1"> Correo </label>

                                        <div class="col-sm-8">
                                            <input type="text" id="form-field-1" placeholder="JPEREZ@EMAIL.COM" class="col-xs-10 col-sm-5" />
                                        </div>
                                    </div>

                                    <div class="space-4"></div>

                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1"> Contraseña </label>

                                        <div class="col-sm-8">
                                            <input type="password" id="form-field-1" placeholder="**********" class="col-xs-10 col-sm-5" />
                                        </div>
                                    </div>                                    

                                    <div class="space-4"></div>

                                    <div class="clearfix form-actions">
                                        <div class="col-md-offset-4 col-md-8">
                                            <button class="btn btn-info" type="button">
                                                <i class="ace-icon fa fa-check bigger-110"></i>
                                                Actualizar
                                            </button>

                                            &nbsp; &nbsp; &nbsp;
                                            <button class="btn" type="reset">
                                                <i class="ace-icon fa fa-undo bigger-110"></i>
                                                Limpiar
                                            </button>
                                        </div>
                                    </div>

                                </form>

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
