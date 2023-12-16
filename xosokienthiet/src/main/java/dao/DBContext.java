package dao;

import com.zaxxer.hikari.HikariDataSource;
import org.jdbi.v3.core.Jdbi;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class DBContext {
    private static HikariDataSource dataSource;
    static Jdbi jdbi;
    static Properties prop = new Properties();

    private static void initializeDatabase(String dbName, String password) {

        String serverName = prop.getProperty("serverName");
        String portNumber = prop.getProperty("portNumber");
        String instance = prop.getProperty("instance");

        String userID = prop.getProperty("userID");
        String url = "jdbc:mysql://" + serverName + ":" + portNumber + "/" + dbName;
        if (instance != null && !instance.trim().isEmpty()) {
            url = "jdbc:mysql://" + serverName + ":" + portNumber + "/" + instance + "/" + dbName;
        }

        dataSource = new HikariDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setJdbcUrl(url);
        dataSource.setUsername(userID);
        dataSource.setPassword(password);
        dataSource.setMaximumPoolSize(200);
        dataSource.setMinimumIdle(30);
    }



    public static Jdbi connectDataMart() {
        try (InputStream input = DBContext.class.getClassLoader().getResourceAsStream("config.properties")) {
            prop.load(input);
        } catch (Exception e) {
            e.printStackTrace();
        }
        String dbName = prop.getProperty("dbName");
        String password = prop.getProperty("password");
        initializeDatabase(dbName, password);
        if (jdbi == null) {
            jdbi = Jdbi.create(dataSource);
        }
        return jdbi;
    }
    private DBContext() {
    }

    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    public static void main(String[] args) throws SQLException {
        connectDataMart();
        System.out.println(dataSource.getConnection());
    }

}
