package kz.keu.ipp.servlet;

import kz.keu.ipp.command.Command;
import kz.keu.ipp.command.CommandFactory;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

public class Controller extends HttpServlet {
    private Logger logger = Logger.getLogger(Controller.class);
    protected CommandFactory factory = new CommandFactory();

    public Controller() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            processRequest(req, resp);    //redirect PRG
        } catch (SQLException e) {
            logger.error(e.getMessage());
        } catch (NoSuchAlgorithmException e) {
            logger.error(e.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            processRequest(req, resp);
        } catch (SQLException e) {
            logger.error(e.getMessage());
        } catch (NoSuchAlgorithmException e) {
            logger.error(e.getMessage());
        }
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, NoSuchAlgorithmException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        Command action = factory.create(request);
        String url = action.perform(request, response);
        if (url != null)
            try {
                request.getRequestDispatcher(url).forward(request, response);
            } catch (ServletException e) {
                logger.error(e.getMessage());
            } catch (IOException e) {
                logger.error(e.getMessage());
            }
    }
}
