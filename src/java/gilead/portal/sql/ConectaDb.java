package gilead.portal.sql;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConectaDb {

    private String ds = "java:comp/env/GCProject";

    public Connection getConnection() {
        Connection cn = null;

        try {
            Context c = new InitialContext();
            DataSource dataSource = (DataSource) c.lookup(ds);
            cn = dataSource.getConnection();

        } catch (NamingException ex) {
        } catch (SQLException ex) {
        }

        return cn;
    }
}
