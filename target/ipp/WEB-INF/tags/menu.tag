<%@ tag import="java.util.ResourceBundle" %>
<% ResourceBundle resourceBundle = ResourceBundle.getBundle("i18n", response.getLocale());%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div>
        <form name="adminStudyLoadMenu" action="controller" method="post">
            <%--<input type="hidden" name="path" value="/WEB-INF/jsp/admin/registrationAdmin.jsp">--%>
            <%--<input type="hidden" name="action" value="goto">--%>
            <input type="submit" value="<%=resourceBundle.getString("menu.studyLoad")%>" name="submit" class="menuButton">
        </form>
</div>
<div>
        <form name="adminEducMethodicWorkMenu" action="controller" method="post">
            <%--<input type="hidden" name="path" value="/WEB-INF/jsp/admin/registrationAdmin.jsp">--%>
            <%--<input type="hidden" name="action" value="goto">--%>
            <input type="submit" value="<%=resourceBundle.getString("menu.educMethodicWork")%>" name="submit" class="menuButton">
        </form>
        </div>
<div>
        <form name="adminScientMethodicWorkMenu" action="controller" method="post">
            <%--<input type="hidden" name="path" value="/WEB-INF/jsp/admin/registrationAdmin.jsp">--%>
            <%--<input type="hidden" name="action" value="goto">--%>
            <input type="submit" value="<%=resourceBundle.getString("menu.scientMethodicWork")%>" name="submit" class="menuButton">
        </form>
    </div>
<div>
        <form name="adminOrgMethodicWorkMenu" action="controller" method="post">
            <%--<input type="hidden" name="path" value="/WEB-INF/jsp/admin/registrationAdmin.jsp">--%>
            <%--<input type="hidden" name="action" value="goto">--%>
            <input type="submit" value="<%=resourceBundle.getString("menu.orgMethodicWork")%>" name="submit" class="menuButton">
        </form>
    </div>
<div>
        <form name="adminResearchWorkMenu" action="controller" method="post">
            <%--<input type="hidden" name="path" value="/WEB-INF/jsp/admin/registrationAdmin.jsp">--%>
            <%--<input type="hidden" name="action" value="goto">--%>
            <input type="submit" value="<%=resourceBundle.getString("menu.researchWork")%>" name="submit" class="menuButton">
        </form>
    </div>
<div>
        <form name="adminExtracurricularWorkMenu" action="controller" method="post">
            <%--<input type="hidden" name="path" value="/WEB-INF/jsp/admin/registrationAdmin.jsp">--%>
            <%--<input type="hidden" name="action" value="goto">--%>
            <input type="submit" value="<%=resourceBundle.getString("menu.extracurricularWork")%>" name="submit" class="menuButton">
        </form>
    </div>
<div>
        <form name="adminKPICriteriaMenu" action="controller" method="post">
            <%--<input type="hidden" name="path" value="/WEB-INF/jsp/admin/registrationAdmin.jsp">--%>
            <%--<input type="hidden" name="action" value="goto">--%>
            <input type="submit" value="<%=resourceBundle.getString("menu.KPICriteria")%>" name="submit" class="menuButton">
        </form>
    </div>


