package kz.keu.ipp.constant;

public class Configuration {
    public static final String DB_DRIVER = "org.h2.Driver";
    public static final String DB_URL = "jdbc:h2:D:\\Zhanna\\Works\\IPPWebApp\\src\\IPPDB/ippDB";
    public static final String DB_USER="sa";
    public static final String DB_PASSWORD="";
    public static final int DB_POOL_SIZE = 20;
    public static final String EMAIL_PATTERN =
            "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
                    + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
}
