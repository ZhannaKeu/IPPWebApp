<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ResourceBundle" %>
<% ResourceBundle resourceBundle = ResourceBundle.getBundle("i18n", response.getLocale());%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/WEB-INF/tld/tags.tld" prefix="t" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style/main.css">
    <title><%=resourceBundle.getString("title")%>
    </title>
</head>
<body>
<table class="tableBody" border = "1" cellpadding="5">
   <tr> 
    <td>Вид работы</td>
    <td>Единицы измерения</td>
	<td>Нормы времени в часах</td>	
  </tr> 
	<td>Профориентационная и международная 
	деятельность,трудоустройство выпускников</td>
	<td>Учебный год</td>
	<td><input type="text"></td>
	</tr>
	<tr>
	<td>Работа в качестве куратора группы</td>
	<td>Учебный год</td>
	<td><input type="text"></td>
	</tr>
	<tr>
	<td>Работа в качестве эдвайзера</td>
	<td>На 100 студентов </td>
	<td><input type="text"></td>
	</tr>
	<tr>
	<td>Дежурство в общежитии</td>
	<td>1 дежурство</td>
	<td><input type="text"></td>
	</tr>
</table>
</body>
</html>