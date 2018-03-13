package kz.keu.ipp.DAO;

import kz.keu.ipp.entity.Discipline;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class DAODiscipline {
    public static Discipline selectById(Connection connection, int id) {
        Discipline discipline = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT id," +
                    "subjectId," +
                    "LanguageId," +
                    "OrganizationStructureId," +
                    "IsActual," +
                    "EducationLevelId," +
                    "[name]," +
                    "[code], FROM Disciplines WHERE id=?";
            statement = connection.prepareStatement(command);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                discipline = new Discipline(resultSet.getInt(1), resultSet.getString(2));
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
        return discipline;
    }

    public static List<Discipline> selectAll(Connection connection) {
        List<Discipline> disciplines = new LinkedList<Discipline>();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT id," +
                    "subjectId," +
                    "LanguageId," +
                    "OrganizationStructureId," +
                    "IsActual," +
                    "EducationLevelId," +
                    "[name]," +
                    "[code], FROM Disciplines";
            statement = connection.prepareStatement(command);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Discipline discipline = new Discipline(resultSet.getInt(1), resultSet.getString(2));
                disciplines.add(discipline);
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
        return discipline;
    }
}
