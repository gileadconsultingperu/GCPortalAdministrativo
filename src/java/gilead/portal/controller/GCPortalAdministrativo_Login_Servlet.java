package gilead.portal.controller;

import gilead.portal.dao.impl.DaoUsuarioImpl;
import gilead.portal.model.BeanUsuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GCPortalAdministrativo_Login_Servlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        String destino = "view/";

        DaoUsuarioImpl usuarioImpl = new DaoUsuarioImpl();
        Integer idusuario = usuarioImpl.autentica(usuario, password);

        if (idusuario != null) {
            BeanUsuario beanUsuario = (BeanUsuario) usuarioImpl.accionObtener(idusuario);

            HttpSession session = request.getSession(true);
            session.setAttribute("ID", session.getId());
            session.setAttribute("usuario", beanUsuario);
            session.setAttribute("login_usuario", beanUsuario.getUsuario());

            if (beanUsuario.getAcceso().equals("ADMIN")) {
                destino = "view/admin/";
            } else if (beanUsuario.getAcceso().equals("USER")) {
                destino = "view/user/";
            }
        }

        response.sendRedirect(destino);
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
