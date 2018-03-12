<%@ tag import="java.util.ResourceBundle" %>
<% ResourceBundle resourceBundle = ResourceBundle.getBundle("i18n", response.getLocale());%>
<img src="image/logo.png" style="float:left; margin-top:20px;">
<h1 class="title-text"><%=resourceBundle.getString("title")%></h1> <p>
