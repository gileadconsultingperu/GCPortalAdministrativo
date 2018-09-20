package gilead.portal.dao.impl;

import gilead.portal.dao.DaoAccion;
import gilead.portal.model.BeanUsuario;
import gilead.portal.sql.ConectaDb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class DaoUsuarioImpl implements DaoAccion {

    @Override
    public Object accionObtener(Integer id) {
        BeanUsuario usuario = null;

        ConectaDb db = new ConectaDb();
        Connection cn = db.getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;

        if (cn != null) {
            try {
                String qry = "SELECT *\n"
                        + "	FROM gcfactura.usuario\n"
                        + "    WHERE idusuario = ?";

                st = cn.prepareStatement(qry);
                st.setInt(1, id);

                rs = st.executeQuery();

                while (rs.next()) {
                    usuario = new BeanUsuario();
                    usuario.setIdusuario(rs.getInt(1));
                    usuario.setApellidos(rs.getString(2));
                    usuario.setNombres(rs.getString(3));
                    usuario.setCorreo(rs.getString(4));
                    usuario.setUsuario(rs.getString(5));
                    usuario.setPassword(rs.getString(6));
                    usuario.setAcceso(rs.getString(7));
                    usuario.setEstado(rs.getString(8));
                }

                cn.close();

            } catch (SQLException e1) {
                System.out.println(e1.getMessage());
                usuario = null;
            }
        }

        return usuario;
    }

    public Integer autentica(String usuario, String password) {
        ConectaDb db = new ConectaDb();
        Connection cn = db.getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;

        Integer idusuario = null;

        if (cn != null) {
            try {
                String qry = "SELECT idusuario\n"
                        + "	FROM gcfactura.usuario\n"
                        + "    WHERE usuario = ? AND password = MD5(?)";

                st = cn.prepareStatement(qry);
                st.setString(1, usuario);
                st.setString(2, password + usuario);

                System.out.println(qry);

                rs = st.executeQuery();

                while (rs.next()) {
                    idusuario = rs.getInt(1);
                }

                cn.close();

            } catch (SQLException e1) {
                System.out.println(e1.getMessage());
                idusuario = null;
            }
        }

        return idusuario;
    }

    @Override
    public List<BeanUsuario> accionListar() {
        BeanUsuario usuario = null;

        ConectaDb db = new ConectaDb();
        Connection cn = db.getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;

        List<BeanUsuario> listUsuario = null;

        if (cn != null) {
            try {
                String qry = "SELECT *\n"
                        + "	FROM gcfactura.usuario";

                st = cn.prepareStatement(qry);

                rs = st.executeQuery();

                listUsuario = new LinkedList<BeanUsuario>();

                while (rs.next()) {
                    usuario = new BeanUsuario();
                    usuario.setIdusuario(rs.getInt(1));
                    usuario.setApellidos(rs.getString(2));
                    usuario.setNombres(rs.getString(3));
                    usuario.setCorreo(rs.getString(4));
                    usuario.setUsuario(rs.getString(5));
                    usuario.setPassword(rs.getString(6));
                    usuario.setAcceso(rs.getString(7));
                    usuario.setEstado(rs.getString(8));

                    listUsuario.add(usuario);
                }

                cn.close();

            } catch (SQLException e1) {
                System.out.println(e1.getMessage());
                usuario = null;
            }
        }

        return listUsuario;
    }

    @Override
    public String accionCrear(Object obj) {
        String msg = null;

        ConectaDb db = new ConectaDb();
        Connection cn = db.getConnection();
        Statement st = null;

        BeanUsuario usuario = (BeanUsuario) obj;

        if (cn != null) {
            try {
                String qry = "INSERT INTO gcfactura.usuario (apellidos,nombres,correo,usuario,password,acceso,estado,fecha_insercion,usuario_insercion,terminal_insercion,ip_insercion) "
                        + "VALUES ('" + usuario.getApellidos().toUpperCase() + "','" + usuario.getNombres().toUpperCase() + "','" + usuario.getCorreo().toUpperCase()
                        + "','" + usuario.getUsuario().toUpperCase() + "',MD5('" + usuario.getPassword() + usuario.getUsuario().toUpperCase() + "'),'USER','" + usuario.getEstado() + "','" + usuario.getFechaInsercion() + "','" + usuario.getUsuarioinsercion() + "','" + usuario.getTerminalinsercion() + "','" + usuario.getIpinsercion() + "')";

                st = cn.createStatement();

                System.out.println(qry);

                int n = st.executeUpdate(qry);

                if (n <= 0) {
                    msg = "0 filas afectadas";
                }

                cn.close();

            } catch (SQLException e1) {
                System.out.println(e1.getMessage());
                msg = e1.getMessage();
            } finally {
                try {
                    cn.close();
                } catch (SQLException e2) {
                    System.out.println(e2.getMessage());
                    msg = e2.getMessage();
                }
            }
        }

        return msg;
    }

    @Override
    public String accionEliminar(int id) {
        String msg = null;

        ConectaDb db = new ConectaDb();
        Connection cn = db.getConnection();
        Statement st = null;

        if (cn != null) {
            try {
                String qry = "UPDATE gcfactura.usuario SET estado = 'I' WHERE idusuario = " + id;

                st = cn.createStatement();

                int n = st.executeUpdate(qry);

                if (n <= 0) {
                    msg = "0 filas afectadas";
                }

                cn.close();

            } catch (SQLException e1) {
                System.out.println(e1.getMessage());
                msg = e1.getMessage();
            } finally {
                try {
                    cn.close();
                } catch (SQLException e2) {
                    System.out.println(e2.getMessage());
                    msg = e2.getMessage();
                }
            }
        }

        return msg;
    }

    public String activarUsuario(int id) {
        String msg = null;

        ConectaDb db = new ConectaDb();
        Connection cn = db.getConnection();
        Statement st = null;

        if (cn != null) {
            try {
                String qry = "UPDATE gcfactura.usuario SET estado = 'A' WHERE idusuario = " + id;

                st = cn.createStatement();

                int n = st.executeUpdate(qry);

                if (n <= 0) {
                    msg = "0 filas afectadas";
                }

                cn.close();

            } catch (SQLException e1) {
                System.out.println(e1.getMessage());
                msg = e1.getMessage();
            } finally {
                try {
                    cn.close();
                } catch (SQLException e2) {
                    System.out.println(e2.getMessage());
                    msg = e2.getMessage();
                }
            }
        }

        return msg;
    }

    @Override
    public String accionActualizar(Object obj) {
        String msg = null;

        ConectaDb db = new ConectaDb();
        Connection cn = db.getConnection();
        Statement st = null;

        BeanUsuario usuario = (BeanUsuario) obj;

        if (cn != null) {
            try {
                String qry = "UPDATE gcfactura.usuario SET apellidos = '" + usuario.getApellidos().toUpperCase()
                        + "', nombres = '" + usuario.getNombres().toUpperCase()
                        + "', correo = '" + usuario.getCorreo().toUpperCase()
                        + "', estado = '" + usuario.getEstado().toUpperCase()
                        + "', fecha_modificacion = '" + usuario.getFechamodificacion()
                        + "', usuario_modificacion = '" + usuario.getUsuariomodificacion()
                        + "', terminal_modificacion = '" + usuario.getTerminalmodificacion()
                        + "', ip_modificacion = '" + usuario.getIpmodificacion() + "' "
                        + "WHERE idusuario = " + usuario.getIdusuario();

                st = cn.createStatement();

                int n = st.executeUpdate(qry);

                if (n <= 0) {
                    msg = "0 filas afectadas";
                }

                cn.close();

            } catch (SQLException e1) {
                System.out.println(e1.getMessage());
                msg = e1.getMessage();
            } finally {
                try {
                    cn.close();
                } catch (SQLException e2) {
                    System.out.println(e2.getMessage());
                    msg = e2.getMessage();
                }
            }
        }

        return msg;
    }

    public String actualizarPassword(BeanUsuario usuario) {
        String msg = null;

        ConectaDb db = new ConectaDb();
        Connection cn = db.getConnection();
        Statement st = null;

        if (cn != null) {
            try {
                String qry = "UPDATE gcfactura.usuario SET password = MD5('" + usuario.getPassword() + "' || usuario)"
                        + ", fecha_modificacion = '" + usuario.getFechamodificacion()
                        + "', usuario_modificacion = '" + usuario.getUsuariomodificacion()
                        + "', terminal_modificacion = '" + usuario.getTerminalmodificacion()
                        + "', ip_modificacion = '" + usuario.getIpmodificacion() + "' "
                        + "WHERE idusuario = " + usuario.getIdusuario();

                st = cn.createStatement();

                int n = st.executeUpdate(qry);

                if (n <= 0) {
                    msg = "0 filas afectadas";
                }

                cn.close();

            } catch (SQLException e1) {
                System.out.println(e1.getMessage());
                msg = e1.getMessage();
            } finally {
                try {
                    cn.close();
                } catch (SQLException e2) {
                    System.out.println(e2.getMessage());
                    msg = e2.getMessage();
                }
            }
        }

        return msg;
    }
}
