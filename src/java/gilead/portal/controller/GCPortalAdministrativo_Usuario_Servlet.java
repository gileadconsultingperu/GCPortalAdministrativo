/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gilead.portal.controller;

import gilead.portal.dao.impl.DaoUsuarioImpl;
import gilead.portal.model.BeanUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Luis
 */
public class GCPortalAdministrativo_Usuario_Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //Obtengo la sesion activa
        HttpSession session = request.getSession(false);
        //response.setContentType("application/json;charset=UTF-8");

        String opcion = request.getParameter("opcion");

        if (opcion.equals("listar")) {
            try (PrintWriter out = response.getWriter()) {
                DaoUsuarioImpl daoUsuarioImpl = new DaoUsuarioImpl();
                List<BeanUsuario> listUsuarios = daoUsuarioImpl.accionListar();

                org.json.simple.JSONArray datos = new org.json.simple.JSONArray();

                for (int i = 0; i < listUsuarios.size(); i++) {
                    String acciones = "";
                    if (listUsuarios.get(i).getEstado().equals("A")) {
                        acciones = "<div class=\"hidden-sm hidden-xs btn-group\">"
                                + "<button type='button' name='actualizar' id='" + listUsuarios.get(i).getIdusuario() + "' class='btn btn-xs btn-info actualizar' title='Actualizar'><i class=\"ace-icon fa fa-pencil bigger-120\"></i></button>"
                                + "<button type='button' name='eliminar' id='" + listUsuarios.get(i).getIdusuario() + "' class='btn btn-xs btn-danger eliminar' title='Inhabilitar'><i class=\"ace-icon fa fa-remove bigger-120\"></i></button>"
                                + "<button type='button' name='actualizarpassword' id='" + listUsuarios.get(i).getIdusuario() + "' class='btn btn-xs btn-warning actualizarpassword' title='Cambiar password'><i class=\"ace-icon fa fa-lock bigger-120\"></i></button>";
                    }
                    if (listUsuarios.get(i).getEstado().equals("I")) {
                        acciones = "<div class=\"hidden-sm hidden-xs btn-group\">"
                                + "<button type='button' name='actualizar' id='" + listUsuarios.get(i).getIdusuario() + "' class='btn btn-xs btn-info actualizar' title='Actualizar'><i class=\"ace-icon fa fa-pencil bigger-120\"></i></button>"
                                + "<button type='button' name='activar' id='" + listUsuarios.get(i).getIdusuario() + "' class='btn btn-xs btn-grey activar' title='Activar'><i class=\"ace-icon fa fa-check bigger-120\"></i></button>"
                                + "<button type='button' name='actualizarpassword' id='" + listUsuarios.get(i).getIdusuario() + "' class='btn btn-xs btn-warning actualizarpassword' title='Cambiar password'><i class=\"ace-icon fa fa-lock bigger-120\"></i></button>";
                    }

                    org.json.simple.JSONObject obj = new org.json.simple.JSONObject();
                    obj.put("id", listUsuarios.get(i).getIdusuario());
                    obj.put("apellidos", listUsuarios.get(i).getApellidos());
                    obj.put("nombres", listUsuarios.get(i).getNombres());
                    obj.put("correo", listUsuarios.get(i).getCorreo());
                    obj.put("usuario", listUsuarios.get(i).getUsuario());
                    obj.put("estado", listUsuarios.get(i).getEstado().equals("A") ? "ACTIVO" : "INACTIVO");
                    obj.put("acciones", acciones);
                    datos.add(obj);
                }

                out.print(" {\"data\":" + datos.toJSONString() + "} ");
                System.out.println("listar -- {\"data\":" + datos.toJSONString() + "} ");
            }
        } else if (opcion.equals("insertar")) {
            try (PrintWriter out = response.getWriter()) {
                String usuario = request.getParameter("usuario");
                String nombres = request.getParameter("nombres");
                String apellidos = request.getParameter("apellidos");
                String correo = request.getParameter("correo");
                String password = request.getParameter("password");
                java.util.Date utilDate = new java.util.Date(System.currentTimeMillis());
                java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
                java.sql.Timestamp ts = new java.sql.Timestamp(sqlDate.getTime());
                String login_usuario = (String) session.getAttribute("login_usuario");
                BeanUsuario nuevo_usuario = new BeanUsuario(null, apellidos, nombres, correo, usuario, password, null, "A", ts, login_usuario, request.getRemoteHost(), request.getRemoteAddr(), null, null, null, null);
                DaoUsuarioImpl daoUsuarioImpl = new DaoUsuarioImpl();
                String msg = daoUsuarioImpl.accionCrear(nuevo_usuario);

                String json = null;
                if (msg == null) {
                    json = "{ \"mensaje\":\"<em>SE CREÓ CORRECTAMENTE EL USUARIO</em>\" ";
                } else {
                    json = "{ \"mensaje\":\"<em>ERROR AL EJECUTAR LA CONSULTA</em>\" ";
                    json += ",";
                    json += " \"html\":\"<div class='alert alert-danger'><button class='close' data-dismiss='alert'><i class='ace-icon fa fa-times'></i></button><span class='ace-icon fa fa-hand-o-right'></span> " + msg.replace("\n", "") + "</div>\" ";
                }

                json += "}";
                System.out.println(json);
                out.print(json);
            }
        } else if (opcion.equals("actualizar")) {
            try (PrintWriter out = response.getWriter()) {
                Integer idusuario = Integer.parseInt(request.getParameter("idusuario"));
                String usuario = request.getParameter("usuario");
                String nombres = request.getParameter("nombres");
                String apellidos = request.getParameter("apellidos");
                String correo = request.getParameter("correo");
                String estado = request.getParameter("estado");
                java.util.Date utilDate = new java.util.Date(System.currentTimeMillis());
                java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
                java.sql.Timestamp ts = new java.sql.Timestamp(sqlDate.getTime());
                String login_usuario = (String) session.getAttribute("login_usuario");
                BeanUsuario nuevo_usuario = new BeanUsuario(idusuario, apellidos, nombres, correo, usuario, null, null, estado, null, null, null, null, ts, login_usuario, request.getRemoteHost(), request.getRemoteAddr());
                DaoUsuarioImpl daoUsuarioImpl = new DaoUsuarioImpl();
                String msg = daoUsuarioImpl.accionActualizar(nuevo_usuario);

                String json = null;
                if (msg == null) {
                    json = "{ \"mensaje\":\"<em>SE ACTUALIZÓ CORRECTAMENTE EL USUARIO</em>\" ";
                } else {
                    json = "{ \"mensaje\":\"<em>ERROR AL EJECUTAR LA CONSULTA</em>\" ";
                    json += ",";
                    json += " \"html\":\"<div class='alert alert-danger'><button class='close' data-dismiss='alert'><i class='ace-icon fa fa-times'></i></button><span class='ace-icon fa fa-hand-o-right'></span> " + msg.replace("\n", "") + "</div>\" ";
                }

                json += "}";
                System.out.println(json);
                out.print(json);
            }
        } else if (opcion.equals("actualizarpassword")) {
            try (PrintWriter out = response.getWriter()) {
                Integer idusuario = Integer.parseInt(request.getParameter("idusuario"));
                String password = request.getParameter("password");
                java.util.Date utilDate = new java.util.Date(System.currentTimeMillis());
                java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
                java.sql.Timestamp ts = new java.sql.Timestamp(sqlDate.getTime());
                String login_usuario = (String) session.getAttribute("login_usuario");
                BeanUsuario usuario = new BeanUsuario(idusuario, null, null, null, null, password, null, null, null, null, null, null, ts, login_usuario, request.getRemoteHost(), request.getRemoteAddr());
                DaoUsuarioImpl daoUsuarioImpl = new DaoUsuarioImpl();
                String msg = daoUsuarioImpl.actualizarPassword(usuario);

                String json = null;
                if (msg == null) {
                    json = "{ \"mensaje\":\"<em>SE ACTUALIZÓ CORRECTAMENTE LA CONTRASEÑA</em>\" ";
                } else {
                    json = "{ \"mensaje\":\"<em>ERROR AL EJECUTAR LA CONSULTA</em>\" ";
                    json += ",";
                    json += " \"html\":\"<div class='alert alert-danger'><button class='close' data-dismiss='alert'><i class='ace-icon fa fa-times'></i></button><span class='ace-icon fa fa-hand-o-right'></span> " + msg.replace("\n", "") + "</div>\" ";
                }

                json += "}";
                System.out.println(json);
                out.print(json);
            }
        } else if (opcion.equals("buscar")) {
            try (PrintWriter out = response.getWriter()) {
                Integer idusuario = Integer.parseInt(request.getParameter("idusuario"));
                DaoUsuarioImpl daoUsuarioImpl = new DaoUsuarioImpl();
                BeanUsuario beanUsuario = (BeanUsuario) daoUsuarioImpl.accionObtener(idusuario);

                org.json.simple.JSONObject obj = new org.json.simple.JSONObject();
                obj.put("idusuario", beanUsuario.getIdusuario());
                obj.put("apellidos", beanUsuario.getApellidos());
                obj.put("nombres", beanUsuario.getNombres());
                obj.put("correo", beanUsuario.getCorreo());
                obj.put("usuario", beanUsuario.getUsuario());
                obj.put("estado", beanUsuario.getEstado());
                out.print(obj.toJSONString());

                System.out.println("buscar -- " + obj.toJSONString());
            }
        } else if (opcion.equals("eliminar")) {
            try (PrintWriter out = response.getWriter()) {
                Integer idusuario = Integer.parseInt(request.getParameter("idusuario"));
                DaoUsuarioImpl daoUsuarioImpl = new DaoUsuarioImpl();
                String msg = daoUsuarioImpl.accionEliminar(idusuario);

                String json = null;
                if (msg == null) {
                    json = "{ \"mensaje\":\"<em>SE INHABILITÓ CORRECTAMENTE EL USUARIO</em>\" ";
                } else {
                    json = "{ \"mensaje\":\"<em>ERROR AL EJECUTAR LA CONSULTA</em>\" ";
                    json += ",";
                    json += " \"html\":\"<div class='alert alert-danger'><button class='close' data-dismiss='alert'><i class='ace-icon fa fa-times'></i></button><span class='ace-icon fa fa-hand-o-right'></span> " + msg.replace("\n", "") + "</div>\" ";
                }

                json += "}";
                System.out.println(json);
                out.print(json);
            }
        } else if (opcion.equals("activar")) {
            try (PrintWriter out = response.getWriter()) {
                Integer idusuario = Integer.parseInt(request.getParameter("idusuario"));
                DaoUsuarioImpl daoUsuarioImpl = new DaoUsuarioImpl();
                String msg = daoUsuarioImpl.activarUsuario(idusuario);

                String json = null;
                if (msg == null) {
                    json = "{ \"mensaje\":\"<em>SE ACTIVÓ CORRECTAMENTE EL USUARIO</em>\" ";
                } else {
                    json = "{ \"mensaje\":\"<em>ERROR AL EJECUTAR LA CONSULTA</em>\" ";
                    json += ",";
                    json += " \"html\":\"<div class='alert alert-danger'><button class='close' data-dismiss='alert'><i class='ace-icon fa fa-times'></i></button><span class='ace-icon fa fa-hand-o-right'></span> " + msg.replace("\n", "") + "</div>\" ";
                }

                json += "}";
                System.out.println(json);
                out.print(json);
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
