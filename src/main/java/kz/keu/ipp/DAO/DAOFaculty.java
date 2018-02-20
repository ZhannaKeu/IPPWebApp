package kz.keu.ipp.DAO;

import kz.keu.ipp.entity.Faculty;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;


public class DAOFaculty {
    public static Faculty selectById(Connection connection, int id) {
        Faculty faculty = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT f.Id, n.Ru " +
                             "FROM Faculty as f " +
                             "JOIN Name as n ONf.[nameId]=n.Id" +
                             "WHERE f.Id=?";
            statement = connection.prepareStatement(command);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                faculty = new Faculty(resultSet.getInt(1),resultSet.getString(2));
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
        return faculty;
    }

    public static List<Faculty> selectAll(Connection connection) {
        List<Faculty> faculties = new LinkedList<Faculty>();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT f.Id, n.Ru " +
                             "FROM Faculty as f " +
                             "JOIN Name as n ONf.[nameId]=n.Id";
            statement = connection.prepareStatement(command);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Faculty faculty = new Faculty(resultSet.getInt(1), resultSet.getString(2));
                faculties.add(faculty);
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
        return faculties;
    }
}
