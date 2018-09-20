package gilead.portal.dao;

import java.util.List;

public interface DaoAccion {

    public Object accionObtener(Integer id);

    public List<?> accionListar();

    public String accionCrear(Object obj);

    public String accionEliminar(int id);

    public String accionActualizar(Object obj);
}
