<%@ tag import="java.util.ResourceBundle" %>
<% ResourceBundle resourceBundle = ResourceBundle.getBundle("i18n", response.getLocale());%>
<hr>
<h6><%=resourceBundle.getString("footer")%></h6>