<%@ tag import="java.util.ResourceBundle" %>
<% ResourceBundle resourceBundle = ResourceBundle.getBundle("i18n", response.getLocale());%>
<table style="width: 100%">
    <tr>
        <td>
            <img src="img/adm2.gif" height="150px"/>
        </td>
        <td>
            <h1><%=resourceBundle.getString("app")%></h1>
        </td>
        <td>
            <img src="img/adm1.jpg" height="150px"/>
        </td>
    </tr>
</table>
<hr>