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
                        <td><%=resourceBundle.getString("number")%>
                        </td>
                        <td><%=resourceBundle.getString("typeofwork")%>
                        </td>
                        <td><%=resourceBundle.getString("units")%>
                        </td>
                        <td><%=resourceBundle.getString("clock")%>
                    </tr>
                    <c:forEach var="chair" items="${requestScope.chairs}">
                        <tr>
                            <td><input type="hidden" name="Номер"
                                    value="${chair.number}"></td>
                            <td><input type="hidden" name="Вид работы"
                                    value="${chair.typeofwork}"></td>
                            <td><input type="hidden" name="Единицы измерения"
                                    value="${chair.units}"></td>
                            <td><input type="hidden" name="Нормы времени в часах"
                                    value="${chair.clock}"></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="4" style="text-align: left">
                            <tr>
                            <td>
                            <input type="hidden" name="action" value="saveAdmission">
                            <input type="submit" value="<%=resourceBundle.getString("button.save")%>" name="Написание и издание: Учебников"
                                                               class="menuButton">
                            </td>
                                                        <td>1 п.л.</td>
                                                        <td>"".</td>
                            </tr>
                            <input type="submit" value="<%=resourceBundle.getString("button.save")%>" name="Написание и издание: Учебных пособий"
                                                               class="menuButton">
                            </td>
                                                        <td>1 п.л.</td>
                                                        <td>"".</td>
                            </tr>

                            <tr>
                            <td>
                            <input type="submit" value="<%=resourceBundle.getString("button.save")%>" name="Написание и издание: Монографии"
                                                               class="menuButton">
                                                        <td>1 п.л.</td>
                                                        <td>"".</td>
                            </tr>

                            <tr>
                            <td>
                            <input type="submit" value="<%=resourceBundle.getString("button.save")%>" name="Написание и издание: Работ по методики обучения"
                                                               class="menuButton">
                                                        <td>1 п.л.</td>
                                                        <td>"".</td>
                            </tr>

                            <tr>
                            <td>
                            <input type="submit" value="<%=resourceBundle.getString("button.save")%>" name="Подготовка и выступления с сообщениями и докладами: Учебно-методический семинар, научно-методологический"
                                                                                           class="menuButton">
                                                        <td>1 Сообщение.</td>
                                                        <td>"".</td>
                            </tr>

                            <tr>
                            <td>
                            <input type="submit" value="<%=resourceBundle.getString("button.save")%>" name="Подготовка и выступления с сообщениями и докладами: На научно-методической конференции"
                                                                                           class="menuButton">
                                                        <td>1 Доклад.</td>
                                                        <td>"".</td>
                            </tr>

                            <tr>
                            <td>
                            <input type="submit" value="<%=resourceBundle.getString("button.save")%>" name="Подготовка и выступления с сообщениями и докладами: Работа по повышению педагогической квалификации (прохождение внутривузовской системы повышения квалификации и др.)"
                                                                                           class="menuButton">
                                                        <td>1 Учебный год.</td>
                                                        <td>"".</td>
                            </tr>
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