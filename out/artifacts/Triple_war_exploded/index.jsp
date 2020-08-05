
<%
	String frmPage = request.getParameter("frmPage"); //plan Planner_main
	String frmPath = "";
	
	if(frmPage == null) frmPath = "/form/home";
	else if("AccountForm".contentEquals(frmPage) || "AccountFind".contentEquals(frmPage) || "AccountFindOK".contentEquals(frmPage) || "Logout".contentEquals(frmPage)
	||"AccountUpdate".contentEquals(frmPage))
		frmPath = "/Account/" + frmPage;
	else if("QnA".contentEquals(frmPage) || "CustomerBoard".contentEquals(frmPage))
		frmPath = "/Board/" + frmPage;
	else if("plan".contentEquals(frmPage))	frmPath ="/Planner/Planner_main";
	else if("cor".contentEquals(frmPage))	frmPath ="/form/Company";

	else if(frmPage != null) frmPath = "/form/" + frmPage;



	
	frmPath += ".jsp";
%>
<html>
<script
		src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous">
</script>
<script>
	$(function () {
		$('#news_join').click(function () {
			var news_frm = document.getElementById('news_frm');
			news_frm.submit();
		})
	})
</script>

<body>
<form id="news_frm" action="NewsLetter/News_index.jsp">
<table style="width:100%;">
<tr>
	<td style="height:100px;"><%@ include file="common/top.jsp" %></td>
</tr>
<tr>
	<td style="height:100px;">
		<jsp:include page="<%=frmPath%>">
			<jsp:param value="index" name="curPage"/>
		</jsp:include>
	</td>
</tr>
<tr>
	<td style="height:100px;">
	<jsp:include page="common/footer.jsp">
		<jsp:param value="index" name="curPage"/>
	</jsp:include>
	</td>
</tr>
</table>
</form>
</body>
</html>