package kz.keu.ipp.DAO;

import kz.keu.ipp.constant.Role;
import kz.keu.ipp.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;


public class DAOUser {
    public static User selectById(Connection connection, int id) {
        User user = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT id, PersonId, role, login, password FROM Users WHERE id=?";
            statement = connection.prepareStatement(command);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                user = new User(resultSet.getInt(1), DAOPerson.selectById(connection,resultSet.getInt(2)),
                        Role.valueOf(resultSet.getString(3)), resultSet.getString(4),
                                resultSet.getString(5));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) statement.close();
                if (resultSet != null) resultSet.close();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
        return user;
    }

    public static boolean isUser(Connection connection, String login, String password) {
        boolean result = false;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT id FROM Users WHERE login=? AND password=?";
            statement = connection.prepareStatement(command);
            statement.setString(1, login);
            statement.setString(2, password);
            resultSet = statement.executeQuery();
            result = resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) statement.close();
                if (resultSet != null) resultSet.close();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
        return result;
    }

    public static int add(Connection connection, User user) {
        int id = -1;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            String command = String.format("INSERT INTO Users (person, role, login, password) VALUES('%s','%s','%s','%s')",
                    user.getPerson().toString(), user.getRole().toString(), user.getLogin(), user.getPassword());
            statement = connection.createStatement();
            statement.executeUpdate(command, Statement.RETURN_GENERATED_KEYS);
            resultSet = statement.getGeneratedKeys();
            resultSet.next();
            id = resultSet.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) statement.close();
                if (resultSet != null) resultSet.close();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
        return id;
    }

    public static void update(Connection connection, User user) {
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            String command = String.format("UPDATE Users " +
                            "SET person = '%s', role = '%s', login = '%s', password = '%s' WHERE id = %d'",
                    user.getPerson().toString(), user.getRole().toString(), user.getLogin(), user.getPassword(), user.getId());
            statement = connection.createStatement();
            statement.executeUpdate(command);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) statement.close();
                if (resultSet != null) resultSet.close();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
    }

    public static void delete(Connection connection, int userId) {
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            String command = String.format("UPDATE Users SET isDelete = 'true' WHERE id = %d", userId);
            statement = connection.createStatement();
            statement.executeUpdate(command);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) statement.close();
                if (resultSet != null) resultSet.close();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
    }

    public static int getUserID(Connection connection, User user) {
        int result = -1;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT id,role FROM Users WHERE login=? AND password=?";
            statement = connection.prepareStatement(command);
            statement.setString(1, user.getLogin());
            statement.setString(2, user.getPassword());
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                result = resultSet.getInt(1);
                user.setId(result);
                user.setRole(Role.valueOf(resultSet.getString(2)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) statement.close();
                if (resultSet != null) resultSet.close();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
        user.setId(result);
        return result;
    }


}
