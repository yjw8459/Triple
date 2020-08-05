

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<%@ include file="TravelSelectProc2.jsp" %>
	<%
	String sqlNum =request.getParameter("sqlNum");
	/* Integer.parseInt(sqlNum); */
	System.out.println(sqlNum);
	getTravelSelect(sqlNum);
	
		List<List<String>> travelLst = getTravelSelect(sqlNum);
	
		List<String> noLst = travelLst.get(0);
		List<String> titleLst = travelLst.get(1);
		List<String> localLst = travelLst.get(2);
		

		
	%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="../lib/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	
</script>

<style>
@font-face {
	font-family: 'DoHyeon-Regular';
	src: url("../fonts/DoHyeon-Regular.ttf");
}

div {
	width: 100%;
}

h1,h2 ,h3,h4 {
	font-family: 'DoHyeon-Regular';
	position: relative;
}
#subText{
	margin-left: 40px;
	font-family: 'DoHyeon-Regular';
	font-size : 40px;
	position: relative;
}
#textArea{
	border: 1px solid #D5D5D5;
	margin-bottom:5px;
}
</style>
<head>
<meta charset="UTF-8">
<title>Recommend</title>

</head>
<body>
	<h1>추천 여행지</h1>
	<nav class="navbar navbar-default">
	
		<!-- <div id="textArea">	
		<h3>&nbsp;&nbsp;인천</h3>
		<span><img src="./img/test5.jpg" name="img4" id="img4" class="img4" width="300" height="200" ></span><span id="subText">#여름에 가볼만한 곳. 오감만족 인천 송도 힐링여행! 추천 코스 5</span></div>
		<div id="textArea">
		<h3>&nbsp;&nbsp;서울</h3>
		<span><img src="./img/test1.jpg" name="img4" id="img4" class="img4" width="300" height="200" ></span><span id="subText">#청계천을 돌아 경복궁에서 인사동까지</span>
		</div>  -->
		
		
		<% 
	
		
		 for(int i = 0; i<titleLst.size();i++) { 
						
			 				 			
		%>	
		
		<div id="textArea">
		
		<h2>&nbsp;<%=localLst.get(i)%>&nbsp;</h2>
		
		<span><a href="TravelArea.jsp?no=<%=i%>&sqlNum=<%=sqlNum%>"><img src="../TravelImg/test<%=noLst.get(i)%>.jpg" name="img4" id="img4" class="img4" width="300" height="200" ></a></span><span id="subText"><%=titleLst.get(i)%></span>
		
		</div>
		
		
	<% } %>
	
			<ul class="nav navbar-nav">
			</ul>
		
		
	</nav>
	<%-- <%=BoardTools.getNavi(pageNum, blockSize, totalPage, url)%> --%>
</body>
</html>