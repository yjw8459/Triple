<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/korea-map-font-v1.css">
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

span {
	width: 100px;
	height: 30px;
}

#LocalMainTxt {
	font-family: 'DoHyeon-Regular';
	color: #4C4C4C;
	font-size: 40px;
	margin-left: 80px;
}

#localnameText {
	margin-top: 30px;
	margin-bottom: 30px;
	font-size: 40px;
}

#localName {
	color: #4C4C4C;
	text-decoration: none;
	font-family: 'DoHyeon-Regular';
	font-size: 20px;
}

/* #localli {
	width: 11.1%;
	height: auto;
	border: 3px solid #ccc;
	box-sizing: border-box;
	text-align: center;
	border: 1px solid #ccc;
}

#localli2 {
	width: 11.1%;
	height: auto;
	border: 1px solid #ccc;
	box-sizing: border-box;
	text-align: center;
	border: 1px solid #ccc;
} */
.korea-map-font-v1 {
	width: 385px;
	height: 400px;
	font-size: 387px;
	color: #777777e0
}
.부산,.경기, .경북 {
	color: #555;
}

#Local {

	display: block;
	/* 	width: auto;
	height:auto; */
}

ul {
	list-style: none;
}

h1 {
	font-family: 'DoHyeon-Regular';
	position: relative;
}

#img1 {
	margin-top: 50px;
	height: 800px;
	width: 400px;
}

#imgSize {
	width: 800px;
	height: 600px;
}

</style>
<head>
<meta charset="UTF-8">
<title>Recommend</title>
</head>
<body>

	<Label id="LocalMainTxt"> 여행지 </Label>
	<a href="RecommendTitle.jsp" id="LocalMainTxt"> 추천</a>
	<nav class="navbar navbar-default">

		<div id="Local" align="center">

			<h1 id="localnameText">지역</h1>
			<div>
				<div id="Localul">
					<span id="localli"><a href="TravelSelect.jsp?sqlNum=0"id="localName">#전체보기</a></span> 
					<span id="localli"><a href="TravelSelect.jsp?sqlNum=5" id="localName">#서울</a></span> 
					<span id="localli"><a href="TravelSelect.jsp?sqlNum=6" id="localName">#경기도</a></span> 
					<span id="localli"><a href="TravelSelect.jsp?sqlNum=7" id="localName">#강원도</a></span> 
					<span id="localli"><a href="TravelSelect.jsp?sqlNum=8" id="localName">#충청도</a></span>
				</div>
			</div>
			
			<div>
				<div id="Localul2">
					<span id="localli2"><a href="TravelSelect.jsp?sqlNum=9"id="localName">#전라도</a></span>
					<span id="localli2"><a href="TravelSelect.jsp?sqlNum=10" id="localName">#경상도</a></span>
					<span id="localli2"><a href="TravelSelect.jsp?sqlNum=11"id="localName">#부산</a></span> 
					<span id="localli2"><a href="TravelSelect.jsp?sqlNum=12" id="localName">#제주도</a></span>
				</div>
			</div>
			<%--<img id="img1" src="../img/test5.jpg">--%>

			<<%--ul class="korea-map-font-v1" id="map">
				<li class="강원">a</li>
				<li class="경기"><a href="TravelSelect.jsp?sqlNum=6" id="localName"></a>b</li>
				<li class="경남">c</li>
				<li class="경북">d</li>
				<li class="광주">e</li>
				<li class="대구">f</li>
				<li class="대전">g</li>
				<li class="부산">h</li>
				<li class="서울">i</li>
				<li class="세종">j</li>
				<li class="울산">k</li>
				<li class="인천">l</li>
				<li class="전남">m</li>
				<li class="전북">n</li>
				<li class="제주">o</li>
				<li class="충남">p</li>
				<li class="충북">q</li>
			</ul>--%>

		</div>

		<img src="../img/test5.jpg" name="img5" id="img5" class="img5">


	</nav>
</body>
</html>