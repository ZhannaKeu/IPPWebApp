<%@ tag import="java.util.ResourceBundle" %>
<% ResourceBundle resourceBundle = ResourceBundle.getBundle("i18n", response.getLocale());%>
<h6 class="title-text"><%=resourceBundle.getString("footer")%></h6>