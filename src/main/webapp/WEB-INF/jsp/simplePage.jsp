<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ResourceBundle" %>
<% ResourceBundle resourceBundle = ResourceBundle.getBundle("i18n", response.getLocale());%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/WEB-INF/tld/tags.tld" prefix="t" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../../style/main.css">
    <title><%=resourceBundle.getString("title")%>
    </title>
</head>
<body>
<table class="tableBody">
    <tr>
        <td colspan="2" class="header">
            <t:header />
        </td>
    </tr>
    <tr>
        <td colspan="2" class="horizont-menu" align="right">
            <t:horizontalMenu/>
        </td>
    </tr>
    <tr>
        <td>
            <form name="chairForm" action="controller" method="post">
                <table class="tableView">
                    <tr class="tableHeaderRow">
                        <td><%=resourceBundle.getString("id")%>
                        </td>
                        <td><%=resourceBundle.getString("chair.name")%>
                        </td>
                        <td><%=resourceBundle.getString("faculty.name")%>
                    </tr>
                    <c:forEach var="chair" items="${requestScope.chairs}">
                        <tr>
                            <td><input type="hidden" name="chairId" value="${chair.id}"></td>
                            <td><input type="hidden" name="chairName" value="${chair.name}"></td>
                            <td><input type="hidden" name="facultyName" value="${chair.faculty.name}"></td>
                     </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="3" style="text-align: left">
                            <input type="hidden" name="action" value="saveAdmission">
                            <input type="submit" value="<%=resourceBundle.getString("button.save")%>" name="submit"
                                   class="commandButton">
                        </td>
                    </tr>
                </table>
            </form>
        </td>
        <td>
            <t:menu/>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="horizont-menu">
            <t:footer/>
        </td>
    </tr>
</table>
</body>
</html>