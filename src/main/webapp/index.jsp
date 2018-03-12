<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ResourceBundle" %>
<% ResourceBundle resourceBundle = ResourceBundle.getBundle("i18n", response.getLocale());%>
<html>
<head>
    <title><%=resourceBundle.getString("title")%></title>
    <link rel="stylesheet" type="text/css" href="style/main.css">
</head>
<body class="index_body">
<p class="shadowtext" align="center"><%=resourceBundle.getString("app.first")%><br/>
    <%=resourceBundle.getString("app.second")%><br/><%=resourceBundle.getString("app.third")%><br/></p>
<div class="login-box">
    <h1><%=resourceBundle.getString("login.title")%></h1>
    <form name="login" action="controller" method="post">
        <table >
            <tr>
                <td><p class="login-box-p" align="left"><%=resourceBundle.getString("login.name")%></p></td>
                <td><input type="text" name= "userName" class="loginInputText"></td>
            </tr>
            <tr>
                <td><p class="login-box-p" align="left"><%=resourceBundle.getString("login.password")%></p></td>
                <td><input type="password" name= "password" class="loginInputText"></td>

            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <input type="hidden" name="action" value="login">
                    <input type="submit" name="submit" class="loginButton" value= <%=resourceBundle.getString("login.signIn")%>>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <t:locale path="/index.jsp"/>
                </td>
            </tr>
        </table>
    </form>

</div>
</body>
</html>

