package kz.keu.ipp.db;

import kz.keu.ipp.constant.Configuration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

public class ConnectionPool extends Thread {
    public static final int DEFAULT_POOL_SIZE = 10;
    private static ConnectionPool instance;
    private BlockingQueue<Connection> connectionQueue;

    private ConnectionPool(String driver, String url, int poolSize) throws ClassNotFoundException, SQLException {
        Class.forName(driver);
        connectionQueue = new ArrayBlockingQueue<Connection>(poolSize);
        for (int i = 0; i < poolSize; i++) {
            Connection connection = DriverManager.getConnection(url);
            connectionQueue.offer(connection);
        }
    }

    public static void init() throws SQLException, IOException {
        if (instance == null) {
            String driver = Configuration.DB_DRIVER;
            String url = Configuration.DB_URL;
            int poolSizeStr = Configuration.DB_POOL_SIZE;
            int poolSize = (poolSizeStr != 0) ? poolSizeStr : DEFAULT_POOL_SIZE;
            try {
                instance = new ConnectionPool(driver, url, poolSize);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public static void dispose() throws SQLException {
        if (instance != null) {
            instance.clearConnectionQueue();
            instance = null;
        }
    }

    public static ConnectionPool getInstance() {
        return instance;
    }

    public Connection takeConnection() {
        Connection connection = null;
        try {
            connection = connectionQueue.take();
        } catch (InterruptedException e) {
            //"Free connection.properties waiting interrupted.
            // Returned `null` connection.properties", e
        }
        return connection;
    }

    public void releaseConnection(Connection connection) {
        try {
            if (!connection.isClosed()) {
                if (!connectionQueue.offer(connection)) {
                    //"connection.properties not added. Possible `leakage` of
                    // connections"
                }
            } else {
                //"Trying to release closed connection.properties. Possible
                // `leakage` of connections"
            }
        } catch (SQLException e) {
            //"SQLException at conection isClosed () checking.
            // connection.properties not added", e
        }
    }

    private void clearConnectionQueue() throws SQLException {
        Connection connection;
        while ((connection = connectionQueue.poll()) != null) {
            /* see java.sql.connection.properties#close () javadoc */
            if (!connection.getAutoCommit()) {
                connection.commit();
            }
            connection.close();
        }
    }
}
