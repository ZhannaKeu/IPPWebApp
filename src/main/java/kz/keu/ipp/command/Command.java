package kz.keu.ipp.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

public interface Command {
    public String perform(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, NoSuchAlgorithmException;
}
