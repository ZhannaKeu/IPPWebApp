package kz.keu.ipp.DAO;

import kz.keu.ipp.entity.Chair;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class DAOChair {
    public static Chair selectById(Connection connection, int id) {
        Chair chair = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT dbo.Department.Id, dbo.Name.Ru, dbo.OrganizationStructure.ParentId " +
                    "FROM     dbo.Department INNER JOIN " +
                    "                  dbo.OrganizationStructure ON dbo.Department.Id = dbo.OrganizationStructure.Id INNER JOIN " +
                    "                  dbo.Name ON dbo.Department.NameId = dbo.Name.Id " +
                             "WHERE id=?";
            statement = connection.prepareStatement(command);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                chair = new Chair(resultSet.getInt(1), resultSet.getString(2),null);
                chair.setFaculty(new DAOFaculty().selectById(connection, resultSet.getInt(3)));
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
        return chair;
    }

    public static List<Chair> selectAll(Connection connection) {
        List<Chair> chairs = new LinkedList<Chair>();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT dbo.Department.Id, dbo.Name.Ru, dbo.OrganizationStructure.ParentId " +
                    "                    FROM     dbo.Department INNER JOIN " +
                    "                                      dbo.OrganizationStructure ON dbo.Department.Id = dbo.OrganizationStructure.Id INNER JOIN n" +
                    "                                      dbo.Name ON dbo.Department.NameId = dbo.Name.Id ";
            statement = connection.prepareStatement(command);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Chair chair = new Chair(resultSet.getInt(1), resultSet.getString(2), null);
                chair.setFaculty(new DAOFaculty().selectById(connection, resultSet.getInt(3)));
                chairs.add(chair);
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
        return chairs;
    }
}
