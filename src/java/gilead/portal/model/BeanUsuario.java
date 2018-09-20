package gilead.portal.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class BeanUsuario implements Serializable {

    private Integer idusuario;
    private String apellidos;
    private String nombres;
    private String correo;
    private String usuario;
    private String password;
    private String acceso;
    private String estado;
    private Timestamp fechaInsercion;
    private String usuarioinsercion;
    private String terminalinsercion;
    private String ipinsercion;
    private Timestamp fechamodificacion;
    private String usuariomodificacion;
    private String terminalmodificacion;
    private String ipmodificacion;

    public BeanUsuario() {
    }

    public BeanUsuario(Integer idusuario, String apellidos, String nombres, String correo, String usuario, String password, String acceso, String estado, Timestamp fechaInsercion, String usuarioinsercion, String terminalinsercion, String ipinsercion, Timestamp fechamodificacion, String usuariomodificacion, String terminalmodificacion, String ipmodificacion) {
        this.idusuario = idusuario;
        this.apellidos = apellidos;
        this.nombres = nombres;
        this.correo = correo;
        this.usuario = usuario;
        this.password = password;
        this.acceso = acceso;
        this.estado = estado;
        this.fechaInsercion = fechaInsercion;
        this.usuarioinsercion = usuarioinsercion;
        this.terminalinsercion = terminalinsercion;
        this.ipinsercion = ipinsercion;
        this.fechamodificacion = fechamodificacion;
        this.usuariomodificacion = usuariomodificacion;
        this.terminalmodificacion = terminalmodificacion;
        this.ipmodificacion = ipmodificacion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Timestamp getFechaInsercion() {
        return fechaInsercion;
    }

    public void setFechaInsercion(Timestamp fechaInsercion) {
        this.fechaInsercion = fechaInsercion;
    }

    public String getUsuarioinsercion() {
        return usuarioinsercion;
    }

    public void setUsuarioinsercion(String usuarioinsercion) {
        this.usuarioinsercion = usuarioinsercion;
    }

    public String getTerminalinsercion() {
        return terminalinsercion;
    }

    public void setTerminalinsercion(String terminalinsercion) {
        this.terminalinsercion = terminalinsercion;
    }

    public String getIpinsercion() {
        return ipinsercion;
    }

    public void setIpinsercion(String ipinsercion) {
        this.ipinsercion = ipinsercion;
    }

    public Timestamp getFechamodificacion() {
        return fechamodificacion;
    }

    public void setFechamodificacion(Timestamp fechamodificacion) {
        this.fechamodificacion = fechamodificacion;
    }

    public String getUsuariomodificacion() {
        return usuariomodificacion;
    }

    public void setUsuariomodificacion(String usuariomodificacion) {
        this.usuariomodificacion = usuariomodificacion;
    }

    public String getTerminalmodificacion() {
        return terminalmodificacion;
    }

    public void setTerminalmodificacion(String terminalmodificacion) {
        this.terminalmodificacion = terminalmodificacion;
    }

    public String getIpmodificacion() {
        return ipmodificacion;
    }

    public void setIpmodificacion(String ipmodificacion) {
        this.ipmodificacion = ipmodificacion;
    }

    public Integer getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(Integer idusuario) {
        this.idusuario = idusuario;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAcceso() {
        return acceso;
    }

    public void setAcceso(String acceso) {
        this.acceso = acceso;
    }

}
