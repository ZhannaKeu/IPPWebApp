<%@ tag import="java.util.ResourceBundle" %>
<% ResourceBundle resourceBundle = ResourceBundle.getBundle("i18n", response.getLocale());%>
<table>
    <tr>
        <td>
            <form name="registration" action="controller" method="post">
                <input type="hidden" name="path" value="/WEB-INF/jsp/user/simplePage.jsp">
                <input type="hidden" name="action" value="goto">
                <input type="submit" value="<%=resourceBundle.getString("main")%>" name="submit"
                       class="horizontalMenuButton">
            </form>
        </td>
        <td>
            <form name="registration" action="controller" method="post">
                <input type="hidden" name="path" value="/WEB-INF/jsp/user/simplePage.jsp">
                <input type="hidden" name="action" value="goto">
                <input type="submit" value="<%=resourceBundle.getString("messages")%>" name="submit"
                       class="horizontalMenuButton">
            </form>
        </td>
        <td>
            <form name="registration" action="controller" method="post">
                <input type="hidden" name="path" value="/WEB-INF/jsp/user/simplePage.jsp">
                <input type="hidden" name="action" value="goto">
                <input type="submit" value="<%=resourceBundle.getString("help")%>" name="submit"
                       class="horizontalMenuButton">
            </form>
        </td>
        <td>
            <form name="signout" action="controller" method="post">
                <input type="hidden" name="action" value="signIn">
                <input type="submit" value="<%=resourceBundle.getString("login.signOut")%>" name="submit"
                       class="horizontalMenuButton">
            </form>
        </td>
    </tr>
</table>