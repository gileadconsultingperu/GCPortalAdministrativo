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
        <title>jqGrid - Ace Admin</title>

        <meta name="description" content="Dynamic tables and grids using jqGrid plugin" />
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
        <link rel="stylesheet" href="../../css/ui.jqgrid.min.css" />

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

        <!-- Alertify Version Nueva-->
        <link rel="stylesheet" href="../../css/alertify/alertify.css">  

        <!-- inline styles related to this page -->

        <!-- ace settings handler -->
        <script src="../../js/ace-extra.min.js"></script>

        <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

        <!--[if lte IE 8]>
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
        <![endif]-->

        <!-- Alertas Version Nueva -->
        <script src="../../js/alertify/alertify.js"></script>
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
                            <li class="">
                                <a href="GCPortal_Perfil.jsp">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Perfil
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="active">
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
                            <li class="active">Usuarios</li>
                        </ul><!-- /.breadcrumb -->

                    </div>

                    <div class="page-content">

                        <div class="page-header">
                            <h1>
                                Usuarios
                                <small>
                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                    Crear, modificar, eliminar usuarios
                                </small>
                            </h1>
                        </div><!-- /.page-header -->

                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->
                                <div class="divError"></div>
                                <div class="clearfix">
                                    <div class="pull-right tableTools-container"></div>
                                </div>
                                <div>
                                    <table id="tablaUsuarios" class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Apellidos</th>
                                                <th>Nombres</th>
                                                <th>Correo</th>
                                                <th>Usuario</th>
                                                <th>Estado</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody id="employee_data">
                                        </tbody>
                                    </table>
                                </div>
                                <!-- PAGE CONTENT ENDS -->
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                </div>
            </div><!-- /.main-content -->

            <!-- Modales -->
            <div class="modal" id="modalAgregarUsuario" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="blue bigger">Registrar Nuevo Usuario</h4>
                        </div>

                        <div class="modal-body">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12">
                                    <input type="hidden" id="idusuario" value="">
                                    <input type="hidden" id="opcion" value="">

                                    <div class="form-group">
                                        <label for="usuario" class="col-sm-3 control-label">Usuario</label>

                                        <div class="col-sm-9">
                                            <input type="text" id="usuario" class="form-control" style="text-transform:uppercase"/>
                                        </div>
                                    </div>

                                    &nbsp;&nbsp;

                                    <div class="form-group">
                                        <label for="nombres" class="col-sm-3 control-label">Nombres</label>

                                        <div class="col-sm-9">
                                            <input type="text" id="nombres" class="form-control" style="text-transform:uppercase"/>
                                        </div>
                                    </div>

                                    &nbsp;&nbsp;

                                    <div class="form-group">
                                        <label for="apellidos" class="col-sm-3 control-label">Apellidos</label>

                                        <div class="col-sm-9">
                                            <input type="text" id="apellidos" class="form-control" style="text-transform:uppercase"/>
                                        </div>
                                    </div>

                                    &nbsp;&nbsp;

                                    <div class="form-group">
                                        <label for="correo" class="col-sm-3 control-label">Correo</label>

                                        <div class="col-sm-9">
                                            <input type="text" id="correo" class="form-control" style="text-transform:uppercase"/>
                                        </div>
                                    </div>

                                    &nbsp;&nbsp;

                                    <div class="form-group" id="divpassword">
                                        <label for="password" class="col-sm-3 control-label">Password</label>

                                        <div class="col-sm-9">
                                            <input type="password" id="password" class="form-control"/>
                                        </div>
                                    </div>

                                    &nbsp;&nbsp;

                                    <div class="form-group" id="divestado">
                                        <label for="estado" class="col-sm-3 control-label">Estado</label>

                                        <div class="col-sm-9">
                                            <select id="estado" name="estado" class="form-control">
                                                <option value="A">ACTIVO</option>
                                                <option value="I">INACTIVO</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button class="btn btn-sm" data-dismiss="modal">
                                <i class="ace-icon fa fa-times"></i>
                                Cancelar
                            </button>

                            <button class="btn btn-sm btn-primary" id="btnGuardar">
                                <i class="ace-icon fa fa-check"></i>
                                Grabar
                            </button>
                        </div>

                    </div>
                </div>
            </div>

            <div class="modal" id="modalModificarPassword" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="blue bigger">Modificar Contraseña</h4>
                        </div>

                        <div class="modal-body">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12">
                                    <input type="hidden" id="mmpidusuario" value="">

                                    <div class="form-group">
                                        <label for="mmppassword" class="col-sm-3 control-label">Password</label>

                                        <div class="col-sm-9">
                                            <input type="password" id="mmppassword" class="form-control"/>
                                        </div>
                                    </div>

                                    &nbsp;&nbsp;

                                    <div class="form-group">
                                        <label for="mmpconfirmarpassword" class="col-sm-3 control-label">Confirmar Password</label>

                                        <div class="col-sm-9">
                                            <input type="password" id="mmpconfirmarpassword" class="form-control"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button class="btn btn-sm" data-dismiss="modal">
                                <i class="ace-icon fa fa-times"></i>
                                Cancelar
                            </button>

                            <button class="btn btn-sm btn-primary" id="btnGuardarModificarPassword">
                                <i class="ace-icon fa fa-check"></i>
                                Grabar
                            </button>
                        </div>

                    </div>
                </div>
            </div>

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

        <!-- page specific plugin scripts 
        <script src="../../js/bootstrap-datepicker.min.js"></script>
        <script src="../../js/jquery.jqGrid.min.js"></script>
        <script src="../../js/grid.locale-en.js"></script>-->

        <!-- page specific plugin scripts -->
        <script src="../../js/jquery.dataTables.min.js"></script>
        <script src="../../js/jquery.dataTables.bootstrap.min.js"></script>
        <script src="../../js/dataTables.buttons.min.js"></script>
        <script src="../../js/buttons.flash.min.js"></script>
        <script src="../../js/buttons.html5.min.js"></script>
        <script src="../../js/buttons.print.min.js"></script>
        <script src="../../js/buttons.colVis.min.js"></script>
        <script src="../../js/dataTables.select.min.js"></script>
        <script src="../../js/dataTables/jszip.min.js"></script>
        <script src="../../js/dataTables/pdfmake.min.js"></script>
        <script src="../../js/dataTables/vfs_fonts.js"></script>

        <!-- ace scripts -->
        <script src="../../js/ace-elements.min.js"></script>
        <script src="../../js/ace.min.js"></script>

        <!--<script type="text/javascript" src="../../js/jquery.dataTables.min.js"></script>
        <!--<script type="text/javascript" src="../../js/dataTables/dataTables.bootstrap.min.js"></script>-->

        <!--<script type="text/javascript" src="../../js/dataTables.buttons.min.js"></script>
        <!--<script type="text/javascript" src="../../js/dataTables/buttons.bootstrap.min.js"></script>-->

        <!--<script type="text/javascript" src="../../js/buttons.html5.min.js"></script>

        <!--<script type="text/javascript" src="../../js/dataTables/jszip.min.js"></script>
        <script type="text/javascript" src="../../js/dataTables/pdfmake.min.js"></script>
        <script type="text/javascript" src="../../js/dataTables/vfs_fonts.js"></script>-->

        <!-- inline scripts related to this page -->
        <script type="text/javascript">

                    $(document).ready(function () {

                        var tablaUsuarios = $('#tablaUsuarios').DataTable({
                            bAutoWidth: false,
                            "processing": true,
                            "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "Todos"]],
                            "iDisplayLength": -1,
                            destroy: true,
                            responsive: true,
                            "searching": true,
                            "order": [[0, 'asc']],
                            ajax: {
                                method: "POST",
                                url: "../../Usuario",
                                data: {"opcion": "listar"},
                                dataSrc: "data"
                            },
                            columns: [
                                {"data": "id"},
                                {"data": "apellidos"},
                                {"data": "nombres"},
                                {"data": "correo"},
                                {"data": "usuario"},
                                {"data": "estado"},
                                {"data": "acciones"}
                            ],
                            dom: '<"row"<"col-xs-12 col-sm-4 col-md-4"l><"col-xs-12 col-sm-4 col-md-4"B><"col-xs-12 col-sm-4 col-md-4"f>>' +
                                    'tr<"row"<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6"p>> ',
                            'columnDefs': [
                                {
                                    'targets': [0, 1, 2, 3, 4, 5],
                                    'createdCell': function (td, cellData, rowData, row, col) {
                                        $(td).attr('contenteditable', 'false');
                                    }
                                }
                            ],
                            buttons: [
                            ],
                            language: {
                                "url": "../../util/espanol.txt"
                            }
                        });

                        $.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';
                        new $.fn.dataTable.Buttons(tablaUsuarios, {
                            buttons: [
                                {
                                    "text": "<i class='fa fa-plus bigger-110 blue'></i>",
                                    "titleAttr": "Nuevo",
                                    "className": "btn btn-white btn-primary btn-bold",
                                    "action": function () {
                                        $('#opcion').val('insertar');
                                        $('#usuario').val('');
                                        $('#nombres').val('');
                                        $('#apellidos').val('');
                                        $('#correo').val('');
                                        $('#password').val('');
                                        $('#estado').val('A');
                                        $('#divpassword').show();
                                        $('#divestado').hide();
                                        $('#usuario').prop('disabled', false)
                                        $('#modalAgregarUsuario .blue').text('Registrar Nuevo Usuario');
                                        $('#modalAgregarUsuario').modal('show');
                                        $('.divError').empty();
                                    }
                                },
                                {
                                    "extend": "copy",
                                    "text": "<i class='fa fa-copy bigger-110 pink'></i>",
                                    "titleAttr": "Copiar",
                                    "className": "btn btn-white btn-primary btn-bold"
                                },
                                {
                                    "extend": 'excel',
                                    "titleAttr": "Excel",
                                    "text": "<i class='fa fa-file-excel-o bigger-110 green'></i>",
                                    "className": "btn btn-white btn-primary btn-bold"
                                },
                                {
                                    "extend": "pdf",
                                    "titleAttr": "PDF",
                                    "text": "<i class='fa fa-file-pdf-o bigger-110 red'></i>",
                                    "className": "btn btn-white btn-primary btn-bold"
                                },
                                {
                                    "extend": "print",
                                    "titleAttr": "Imprimir",
                                    "text": "<i class='fa fa-print bigger-110 grey'></i>",
                                    "className": "btn btn-white btn-primary btn-bold",
                                    autoPrint: true,
                                    message: 'This print was produced using the Print button for DataTables'
                                }
                            ]
                        });

                        tablaUsuarios.buttons().container().appendTo($('.tableTools-container'));

                        $('#btnGuardar').click(function (event) {
                            var idusuario = $('#idusuario').val();
                            var usuario = $('#usuario').val();
                            var nombres = $('#nombres').val();
                            var apellidos = $('#apellidos').val();
                            var correo = $('#correo').val();
                            var password = $('#password').val();
                            var estado = $('#estado').val();
                            var opcion = $('#opcion').val();

                            $.ajax({
                                method: "POST",
                                url: "../../Usuario",
                                data: {"opcion": opcion, "idusuario": idusuario, "usuario": usuario, "nombres": nombres, "apellidos": apellidos,
                                    "correo": correo, "password": password, "estado": estado}
                            }).done(function (data) {
                                var obj = jQuery.parseJSON(data);
                                if (obj.mensaje.indexOf('ERROR') !== -1) {
                                    $('.divError').html(obj.html);
                                    $('.divError').addClass('tada animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
                                        $('.divError').removeClass('tada animated');
                                    });
                                } else {
                                    tablaUsuarios.ajax.reload();
                                    alertify.success(obj.mensaje);
                                }
                                $('#modalAgregarUsuario').modal('hide');
                            });
                        });

                        //Actualizar registro
                        $(document).on('click', '.actualizar', function () {
                            var idusuario = $(this).attr('id');
                            var row = $(this).parent().parent();
                            $.ajax({
                                url: "../../Usuario",
                                method: "POST",
                                data: {"opcion": "buscar", "idusuario": idusuario},
                                success: function (data) {
                                    var obj = jQuery.parseJSON(data);
                                    $('#opcion').val('actualizar');
                                    $('#idusuario').val(obj.idusuario);
                                    $('#usuario').val(obj.usuario);
                                    $('#nombres').val(obj.nombres);
                                    $('#apellidos').val(obj.apellidos);
                                    $('#correo').val(obj.correo);
                                    $('#password').val('');
                                    $('#estado').val(obj.estado);
                                    $('#divpassword').hide();
                                    $('#divestado').hide();
                                    $('#usuario').prop('disabled', true)
                                    $('#modalAgregarUsuario .blue').text('Modificar Usuario');
                                    $('#modalAgregarUsuario').modal('show');
                                },
                                error: function (error) {
                                    alertify.error("ERROR AL EJECUTAR AJAX DE OBTENER DATOS USUARIO");
                                }
                            }).done();

                        });

                        //Actualizar contraseña
                        $(document).on('click', '.actualizarpassword', function () {
                            var idusuario = $(this).attr('id');
                            var row = $(this).parent().parent();
                            $('#mmpidusuario').val(idusuario);
                            $('#mmppassword').val('');
                            $('#mmpconfirmarpassword').val('');
                            $('#modalModificarPassword .blue').text('Modificar Contraseña');
                            $('#modalModificarPassword').modal('show');
                        });

                        $('#btnGuardarModificarPassword').click(function (event) {
                            var idusuario = $('#mmpidusuario').val();
                            var password = $('#mmppassword').val();
                            var confirmarpassword = $('#mmpconfirmarpassword').val();

                            if (password === confirmarpassword) {
                                $.ajax({
                                    method: "POST",
                                    url: "../../Usuario",
                                    data: {"opcion": "actualizarpassword", "idusuario": idusuario, "password": password}
                                }).done(function (data) {
                                    var obj = jQuery.parseJSON(data);
                                    if (obj.mensaje.indexOf('ERROR') !== -1) {
                                        $('.divError').html(obj.html);
                                        $('.divError').addClass('tada animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
                                            $('.divError').removeClass('tada animated');
                                        });
                                    } else {
                                        tablaUsuarios.ajax.reload();
                                        alertify.success(obj.mensaje);
                                    }
                                    $('#modalModificarPassword').modal('hide');
                                });
                            } else {
                                alertify.error("NO COINCIDE LOS VALORES DE LA CONTRASEÑA");
                            }
                        });

                        //Eliminar registro
                        $(document).on('click', '.eliminar', function () {
                            var idusuario = $(this).attr('id');
                            var row = $(this).parent().parent();
                            $.ajax({
                                url: "../../Usuario",
                                method: "POST",
                                data: {"opcion": "eliminar", "idusuario": idusuario},
                                success: function (data) {
                                    var obj = jQuery.parseJSON(data);
                                    if (obj.mensaje.indexOf('ERROR') !== -1) {
                                        $('.divError').html(obj.html);
                                        $('.divError').addClass('tada animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
                                            $('.divError').removeClass('tada animated');
                                        });
                                    } else {
                                        tablaUsuarios.ajax.reload();
                                        alertify.success(obj.mensaje);
                                    }
                                },
                                error: function (error) {
                                    alertify.error("ERROR AL EJECUTAR AJAX DE INHABILITAR");
                                }
                            }).done();
                        });

                        //Activar usuario
                        $(document).on('click', '.activar', function () {
                            var idusuario = $(this).attr('id');
                            var row = $(this).parent().parent();
                            $.ajax({
                                url: "../../Usuario",
                                method: "POST",
                                data: {"opcion": "activar", "idusuario": idusuario},
                                success: function (data) {
                                    var obj = jQuery.parseJSON(data);
                                    if (obj.mensaje.indexOf('ERROR') !== -1) {
                                        $('.divError').html(obj.html);
                                        $('.divError').addClass('tada animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
                                            $('.divError').removeClass('tada animated');
                                        });
                                    } else {
                                        tablaUsuarios.ajax.reload();
                                        alertify.success(obj.mensaje);
                                    }
                                },
                                error: function (error) {
                                    alertify.error("ERROR AL EJECUTAR AJAX DE INHABILITAR");
                                }
                            }).done();
                        });

                    });
        </script>
    </body>
    <%
        } else {
            response.sendRedirect("../");
        }
    %>
</html>
