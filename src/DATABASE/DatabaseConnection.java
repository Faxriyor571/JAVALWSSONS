package DATABASE;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String DB_URL = "jdbc:mariadb://localhost:3306/bookstore";
    private static final String DB_USER = "Faxriyorbey";
    private static final String DB_PASSWORD = "********";

    // singleton instance
    private static DatabaseConnection instance;

    private DatabaseConnection() {
        try {
            Class.forName("org.mariadb.jdbc.driver");
        } catch (ClassNotFoundException e) {
            System.err.println("error loading mariadb jdbs driver" + e.getMessage());
            throw new RuntimeException("failed to load database driver", e);
        }
    }

    public static synchronized DatabaseConnection getInstance() {
        return instance;
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        }

    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try{
                connection.close();;
            } catch (SQLException e) {
                System.err.println("error closing connection" + e.getMessage());
            }
        }
    }
}
