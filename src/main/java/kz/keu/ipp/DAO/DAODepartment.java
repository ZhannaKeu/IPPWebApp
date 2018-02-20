package kz.keu.ipp.DAO;

import kz.keu.ipp.entity.Department;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class DAODepartment {
    public static Department selectById(Connection connection,int id) {
        Department department = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT id,[name] FROM Departments WHERE id=?";
            statement = connection.prepareStatement(command);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                department = new Department(resultSet.getInt(1), resultSet.getString(2));
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
        return department;
    }

        public static List<Department> selectAll(Connection connection) {
        List<Department> departments = new LinkedList<Department>();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT id,name FROM Departments";
            statement = connection.prepareStatement(command);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Department department = new Department(resultSet.getInt(1), resultSet.getString(2));
                departments.add(department);
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
        return departments;
    }
}
