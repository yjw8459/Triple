<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
@import url(https://fonts.googleapis.com/css?family=Lato:400,700);
#container {
	text-align: center;
}
h1 {
	font-family: 'Lato', sans-serif;
	font-size: 18px;
  font-weight: 700;
  margin-bottom: 23px;
  text-align: center;
  text-indent: 6px;
  letter-spacing: 7px;
  text-transform: uppercase;
  color: #263238;
}
#findresult {
	background-color: #f7f7f7;
}
p {
	color: #333;
}
</style>
<%
	/* String msg = request.getParameter("msg"); */
	String msg = request.getParameter("msg");
	
	URLEncoder.encode(msg, "utf-8");
	String result = URLDecoder.decode(msg, "utf-8");

%>
<div id="container">
	<div id="contents">
		<div id="title">
			<h1>회원님의 정보와 일치하는 (아이디/비밀번호) 입니다.</h1>
		</div>
		<div id="findresult">
			<p><%=msg %></p>	
		</div>
	</div>
	<span>
		<a href="<%=request.getContextPath()%>/index.jsp?frmPage=home"><input type="button" id="okBtn" value="확인"/></a>
		<a href="<%=request.getContextPath()%>/index.jsp?frmPage=AccountForm"><input type="button" id="LoginBtn" value="로그인하기"/></a>
		<a href="<%=request.getContextPath()%>/index.jsp?frmPage=?"><input type="button" id="FindpwBtn" value="비밀번호 찾기"/></a>
	</span>
</div>