package kz.keu.ipp.DAO;

import kz.keu.ipp.entity.Person;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class DAOPerson {
    public static Person selectById(Connection connection, int id) {
        Person person = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT dbo.Person.Id, dbo.Person.LastName, dbo.Person.FirstName, dbo.Person.MiddleName, " +
                    "                (SELECT dbo.Name.Ru FROM dbo.Name WHERE id =dbo.AcademicTitle.NameId) as ay," +
                    "                dbo.WorkPlace.OrganizationStructureId, dbo.OrganizationStructure.ParentId, " +
                    "                dbo.WorkPlace.OrganizationId, dbo.WorkPlace.PostId, dbo.Name.Id AS IdPost, " +
                    "                dbo.Name.Ru AS Post " +
                    "FROM       dbo.Person " +
                    "  INNER JOIN dbo.Work ON (dbo.Person.Id = dbo.Work.PersonId) " +
                    "  INNER JOIN dbo.WorkPlace ON (dbo.Work.WorkPlaceId = dbo.WorkPlace.Id) " +
                    "  INNER JOIN dbo.OrganizationStructure ON (dbo.WorkPlace.OrganizationStructureId = dbo.OrganizationStructure.Id) " +
                    "  INNER JOIN dbo.Organization ON (dbo.OrganizationStructure.OrganizationId = dbo.Organization.Id) " +
                    "  INNER JOIN dbo.Post ON (dbo.WorkPlace.PostId = dbo.Post.Id) " +
                    "  INNER JOIN dbo.Name ON (dbo.Post.NameId = dbo.Name.Id) " +
                    "  INNER JOIN dbo.AcademicTitle ON dbo.Name.Id = dbo.AcademicTitle.NameId " +
                    "  WHERE dbo.Person.Id=?";
            statement = connection.prepareStatement(command);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                person = new Person(resultSet.getInt(1), resultSet.getString(2),  resultSet.getString(3),
                        resultSet.getString(4),resultSet.getString(5),resultSet.getString(10), null);
                person.setChair(new DAOChair().selectById(connection,resultSet.getInt(6)));
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
        return person;
    }

    public static List<Person> selectAll(Connection connection) {
        List<Person> persons = new LinkedList<Person>();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String command = "SELECT dbo.Person.Id, dbo.Person.LastName, dbo.Person.FirstName, dbo.Person.MiddleName, " +
            "                (SELECT dbo.Name.Ru FROM dbo.Name WHERE id =dbo.AcademicTitle.NameId) as ay," +
                    "                dbo.WorkPlace.OrganizationStructureId, dbo.OrganizationStructure.ParentId, " +
                    "                dbo.WorkPlace.OrganizationId, dbo.WorkPlace.PostId, dbo.Name.Id AS IdPost, " +
                    "                dbo.Name.Ru AS Post " +
                    "FROM       dbo.Person " +
                    "  INNER JOIN dbo.Work ON (dbo.Person.Id = dbo.Work.PersonId) " +
                    "  INNER JOIN dbo.WorkPlace ON (dbo.Work.WorkPlaceId = dbo.WorkPlace.Id) " +
                    "  INNER JOIN dbo.OrganizationStructure ON (dbo.WorkPlace.OrganizationStructureId = dbo.OrganizationStructure.Id) " +
                    "  INNER JOIN dbo.Organization ON (dbo.OrganizationStructure.OrganizationId = dbo.Organization.Id) " +
                    "  INNER JOIN dbo.Post ON (dbo.WorkPlace.PostId = dbo.Post.Id) " +
                    "  INNER JOIN dbo.Name ON (dbo.Post.NameId = dbo.Name.Id) " +
                    "  INNER JOIN dbo.AcademicTitle ON dbo.Name.Id = dbo.AcademicTitle.NameId" ;
            statement = connection.prepareStatement(command);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Person person = new Person(resultSet.getInt(1), resultSet.getString(2),  resultSet.getString(3),
                        resultSet.getString(4),resultSet.getString(5),resultSet.getString(10), null);
                person.setChair(new DAOChair().selectById(connection,resultSet.getInt(6)));
                persons.add(person);
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
        return persons;
    }
}
