<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	request.setCharacterEncoding("utf-8");
	session.removeAttribute("usrId");
%>
<jsp:forward page="/index.jsp">
	<jsp:param value="home" name="frmPage"/>
</jsp:forward>