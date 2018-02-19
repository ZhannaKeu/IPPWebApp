<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ResourceBundle" %>
<% ResourceBundle resourceBundle = ResourceBundle.getBundle("i18n", response.getLocale());%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/WEB-INF/tld/tags.tld" prefix="t" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style/main.css">
    <title><%=resourceBundle.getString("admission.catalogTitle")%>
    </title>
</head>
<body>
<table class="tableBody">
    <tr>
        <td colspan="2">
            <t:header/>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <t:horizontalMenu/>
        </td>
    </tr>
    <tr>
        <td>
            Основная рабочая часть
        </td>
        <td>
            <t:menu/>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <t:footer/>
        </td>
    </tr>
</table>
</body>
</html>