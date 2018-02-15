package kz.keu.ipp.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Parser {
    public static int stringToIntParser(String string) {
        int number = 0;
        if (string != null && !"".equals(string)) {
            number = Integer.parseInt(string);
        }
        return number;
    }

    public static String nullStringParser(String string) {
        String result = "";
        if (string != null) {
            result = string;
        }
        return result;
    }

    public static String[] dividedIntoTwoParts(String string, char symbol) {
        String[] result = new String[2];
        int posDash = string.indexOf(symbol);
        result[0] = string.substring(0, posDash);
        if (posDash < string.length()) {
            result[1] = string.substring(posDash + 1, string.length());
        } else {
            result[1] = "";
        }
        return result;
    }

    public static Date dateParser(String string) {
        Date date = null;
        DateFormat formatter = new SimpleDateFormat("dd-mm-yyyy");
        try {
            date = formatter.parse(string);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    public static java.sql.Date utilDateToSqlDateParser(Date date) {
        long millsec = 0;
        if (date != null) {
            millsec = date.getTime();
        }
        return new java.sql.Date(millsec);
    }

    public static Date sqlDateToUtilDateParser(java.sql.Date date) {
        Date udate = null;
        if (date != null) {
            udate = new Date(date.getTime());
        }
        return udate;
    }
}
