package kz.keu.ipp.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;


public class LoginCommand implements Command {
    @Override
    public String perform(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        String page = "/WEB-INF/jsp/simplePage.jsp";;
        return page;
    }
}
