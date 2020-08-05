<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<%
		String no = request.getParameter("no");
		session.setAttribute("no",no);
		System.out.println(no);
	%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
@font-face {
	font-family: 'DoHyeon-Regular';
	src: url("../fonts/DoHyeon-Regular.ttf");
}

<%-- <%@ include file="TravelResult2.jsp?no=<%=no%>" %> --%>


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table style="width: 100%">
		<tr>
			<td style="height: 100px;"><%@ include file="../common/top.jsp"%></td>
		</tr>
		<tr>
			<td style="height: 100px;"><jsp:include page="TravelResult2.jsp?<%=no%>"></jsp:include></td>
		</tr>

		<tr>
			<td style="height: 100px;"><%@ include file="../common/footer.jsp"%></td>
		</tr>
	</table>
</body>
</html>
