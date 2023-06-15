package connect;

import java.sql.*;

public class Connect {
    Connection con;

    public Connection getConnectionPgsql() throws Exception {
        try {
            // Class dbDriver = Class.forName("org.postgresql.Driver");
            Class.forName("org.postgresql.Driver");
            String jdbcURL = "jdbc:postgresql://localhost:5432/gestionport";
            con = DriverManager.getConnection(jdbcURL, "postgres", "root");

            con.setAutoCommit(false);

            return con;
        } catch (Exception e) {
            e.printStackTrace();
        }
        throw new Exception("Connexion postgres interrompue");

    }

    public Connection getConnection() {
        return this.con;
    }

    public Connection getConnexionOracle() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
