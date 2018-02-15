package kz.keu.ipp.command;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public class CommandFactory {
    protected Map<String, Command> commandMap;

    public CommandFactory() {
        super();
    }

    public Command create(HttpServletRequest request) {
        if (commandMap == null) {
            defaultMap();
        }
        String action = request.getParameter("action");
        Command command = commandMap.get(action);
        return command;
    }

    protected Map defaultMap() {
        commandMap = new HashMap<String, Command>();

   //     commandMap.put("login", new LoginCommand());
    //    commandMap.put("signIn", new SignInCommand());
    //    commandMap.put("goto", new GoToPageCommand());

        return commandMap;
    }
}
