<%@ tag import="java.util.ResourceBundle" %>
<% ResourceBundle resourceBundle = ResourceBundle.getBundle("i18n", response.getLocale());%>
<h1>This is header</h1>
<h1><%=resourceBundle.getString("title")%></h1>