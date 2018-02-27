package kz.keu.ipp.command;

import kz.keu.ipp.DAO.DAOChair;
import kz.keu.ipp.db.ConnectionPool;
import kz.keu.ipp.entity.Chair;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;


public class LoginCommand implements Command {
    @Override
    public String perform(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        String page = null;
        ConnectionPool pool = null;
        Connection connection = null;
        try {
            ConnectionPool.init();
            pool = ConnectionPool.getInstance();
            connection = pool.takeConnection();
            List<Chair> chairs = DAOChair.selectAll(connection);
            request.setAttribute("chairs", chairs);
            page = "/WEB-INF/jsp/simplePage.jsp";
            pool.releaseConnection(connection);
            ConnectionPool.dispose();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return page;
    }
}
