package kz.keu.ipp.exception;

import java.sql.SQLException;

public class DAOSQLException extends SQLException {
    public DAOSQLException(String message){
        super(message);
    }
}
