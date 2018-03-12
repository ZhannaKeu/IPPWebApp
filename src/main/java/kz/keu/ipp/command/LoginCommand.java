package kz.keu.ipp.command;

import kz.keu.ipp.DAO.*;
import kz.keu.ipp.db.ConnectionPool;
import kz.keu.ipp.entity.*;
import kz.keu.ipp.util.CryptoUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
        HttpSession session = request.getSession();
        String login = request.getParameter("userName");
        String password = CryptoUtils.SHA1(request.getParameter("password"));
        try {
            ConnectionPool.init();
            pool = ConnectionPool.getInstance();
            connection = pool.takeConnection();
            User user = new User(login, password);
            if (DAOUser.getUserID(connection,user) != -1) {
                session.setAttribute("userId", user.getId());
                session.setAttribute("userRole", user.getRole());
                Cookie getUserId = new Cookie("userId", Integer.toString(user.getId()));
                response.addCookie(getUserId);
                List<Chair> chairs = DAOChair.selectAll(connection);
                request.setAttribute("chairs", chairs);
                page = "/WEB-INF/jsp/simplePage.jsp";
            } else {
                request.setAttribute("errorMessage", "Invalid login or password");
                page = "/WEB-INF/jsp/index.jsp";
            }




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
