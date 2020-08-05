<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	request.setCharacterEncoding("utf-8");
	String usrId = (String)session.getAttribute("usrId");
%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.css">
<!-- <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="js/bootstrap.js"></script> -->
<form action="index.jsp" method="post" name="frmPage">
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp?frmPage=home"><img src="<%=request.getContextPath() %>/img/triple_logo.png"></a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">

				<li><a href="<%=request.getContextPath()%>/index.jsp?frmPage=plan">일정만들기</a></li>
				<li><a href="how.jsp">이용방법</a></li>
				<li><a href="<%=request.getContextPath()%>/Travel/LocalTitle.jsp">여행지</a></li>
				<li><a href="<%=request.getContextPath()%>/Travel/RecommendTitle.jsp">추천</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
				<%if(usrId != null) { %>
				<a href="<%=request.getContextPath() %>/index.jsp?frmPage=AccountUpdate"><img src="<%=request.getContextPath()%>/img/mypage.png" id=""/></a>
				<a href="<%=request.getContextPath() %>/index.jsp?frmPage=Logout">로그아웃(<%=usrId %>)</a>
				<%}else { %>
				<a href="<%=request.getContextPath() %>/index.jsp?frmPage=AccountForm" class="dropdown-toggle">접속하기</a>
				</li>
				<%} %>
			</ul>
		</div>
	</nav>
</form>