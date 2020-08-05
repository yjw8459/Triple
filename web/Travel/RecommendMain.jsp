<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

h1 {
	font-family: 'DoHyeon-Regular';
	position: relative;
}

#img1 {
	width: 500px;
	height: 300px;
}

#img2 {
	margin-left: 10px;
	width: 500px;
	height: 300px;
}

#img3 {
	margin-left: 10px;
	width: 500px;
	height: 300px;
}

#img4 {
	margin-top: 50px;
	margin-bottom: 50px;
	margin-left: 10px;
	background-image: url("../img/test4.jpg");
	height: 250px;
	width: 400px;
}

#img5 {
	margin-top: 50px;
	margin-bottom: 50px;
	margin-left: 10px;
	background-image: url("../img/test5.jpg");
	height: 250px;
	width: 400px;
}

#img6 {
	margin-top: 50px;
	margin-bottom: 50px;
	margin-left: 10px;
	background-image: url("../img/test6.jpg");
	height: 250px;
	width: 400px;
}

#LocalMainTxt {
	font-family: 'DoHyeon-Regular';
	color: #4C4C4C;
	font-size: 40px;
	margin-left: 80px;
}


#img7 {
	margin-top: 50px;
	margin-bottom: 50px;
	margin-left: 10px;
	background-image: url("../img/test7.jpg");
	height: 250px;
	width: 400px;
}
</style>
<head>
<meta charset="UTF-8">
<title>Recommend</title>
</head>
<body>
	
	<Label id="LocalMainTxt"> 추천 </Label> <a href="LocalTitle.jsp"id="LocalMainTxt"> 여행지</a>
	<nav class="navbar navbar-default">
	
	<div align="center">
			<h1>#이달의 여행지 랭킹 3</h1>
	
	<br>
	<div>
		<a href="TravelSelect.jsp?sqlNum=0" ><img src="../img/test1.jpg" name="img1" id="img1" class="img1"> </a>
		<a href="TravelSelect.jsp?sqlNum=0"><img src="../img/test2.jpg" name="img1" id="img2" class="img2"></a>
		<a href="TravelSelect.jsp?sqlNum=0"><img src="../img/test3.jpg" name="img1" id="img3" class="img3"></a>
			
	</div>

	<div>
		<br>
		
		<h1>#테마 여행</h1>
		
	</div>
	<div>
		<a href="TravelSelect.jsp?sqlNum=1" ><img src="../img/test4.jpg" name="img4" id="img4" class="img4"></a>
		<a href="TravelSelect.jsp?sqlNum=2" ><img src="../img/test5.jpg" name="img5" id="img5" class="img5"></a>
		<a href="TravelSelect.jsp?sqlNum=3" ><img src="../img/test6.jpg" name="img6" id="img6" class="img6"></a>
		<a href="TravelSelect.jsp?sqlNum=4" ><img src="../img/test7.jpg" name="img7" id="img7" class="img7"></a>
	</div>

</div>
</nav>
	<!-- 		<div id="img4">
					<h2 align="center">#도시의뷰</h2>
				</div>
				<div id="img5">
					<h2 align="center">#맑은하늘</h2>
				</div>
				<div id="img6">
					<h2 align="center">#좋은뷰</h2>
				</div>
				<div id="img7">
					<h2 align="center">#나쁜하늘</h2>
				</div> -->

</body>
</html>