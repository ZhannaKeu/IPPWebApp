package kz.keu.ipp.util;

import java.util.Random;

/**
 * Created with IntelliJ IDEA.
 * User: Zhanna_Mukanova
 * Date: 10/7/13
 * Time: 4:51 PM
 * To change this template use File | Settings | File Templates.
 */
public class PasswordGenerator {
    public static String generate() {
        StringBuilder password = new StringBuilder();
        Random random = new Random();

        for (int i = 0; i < 10; ++i) {
            char next = 0;
            int range = 10;

            switch (random.nextInt(3)) {
                case 0: {
                    next = '0';
                    range = 10;
                }
                break;
                case 1: {
                    next = 'a';
                    range = 26;
                }
                break;
                case 2: {
                    next = 'A';
                    range = 26;
                }
                break;
            }

            password.append((random.nextInt(range)) + next);
        }

        return password.toString();
    }
}
