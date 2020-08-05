<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<style>

#banner {
	width: 100%;
	height: 400px;
	text-align: center;
	max-width: 100%;
	background-image: url("<%=request.getContextPath()%>/img/mainbanner.jpg");
}
#search {
	display: inline-block; 
	margin-top: 50px;
}
#searchForm {
	width: 500px;
	height: 55px;
	border: solid 2px #D2691E;
	border-radius: 8px;
}
#searchBtn {
	width: 200px;
	height: 55px;
	border: solid 2px #D2691E;
	border-radius: 8px;
}
span img {
	margin-left: 12%;
	width: 150px;
	height: 100px;
}
#categoryInfo {
	font-size: 20pt;
	font-style: italic;
	text-align: center;
	font-weight: bold;
}
#news_join {
	font-size: 20pt;
	font-style: italic;
	text-align: center;
	font-weight: bold;
	cursor: pointer;
}
#search_result{
	height: 150px;
}

</style>
<meta charset="UTF-8">
<title>TRIPLE</title>
	<script
			src="https://code.jquery.com/jquery-3.5.1.min.js"
			integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
			crossorigin="anonymous">
	</script>
	<script type="text/javascript">
		 $(function () {
		 	$('#searchBtn').click(function () {
				var findStr = $('#searchForm').val();
				alert(findStr);
				$('#home').css("display","none");
				$('#search_result').load('form/Local_find.jsp #local_find');
			//	Local_find.jsp에 검색어 전달 후 결과 값이 담긴 아이디를 가져옴

			})
		 })
	</script>
</head>
<body>
<div id="home">
<div id="banner">
	<div id="search">
		<input type="text" name="search" id="searchForm" placeholder="도시명으로 검색하세요.">
		<input type="button" name="searchBtn" value="검색" id="searchBtn">
	</div>
</div>
<p id="categoryInfo">트리플에서 여행을 시작하세요!</p>
<div id="category">
	<span id="recommand"><img src="<%=request.getContextPath() %>/img/reco.jpg"></span>
	<span id="travel"><img src="<%=request.getContextPath() %>/img/travel.jpg"></span>
	<span id="festival"><img src="<%=request.getContextPath() %>/img/festi.jpg"></span>
	<span id="newletter"><img src="<%=request.getContextPath() %>/img/newsletter.jpg"></span>
</div>
<br/>
<%--<p id="news_join">뉴스레터</p>--%>
<p id="news_join">뉴스레터</p>
<div id="newsletter">
	<span class="news_img"><img src="<%=request.getContextPath() %>/imgs/news_1.png"></span>
	<span class="news_img"><img src="<%=request.getContextPath() %>/imgs/news_2.png"></span>
	<span class="news_img"><img src="<%=request.getContextPath() %>/imgs/news_3.png"></span>
	<span class="news_img"><img src="<%=request.getContextPath() %>/imgs/news_4.png"></span>
</div>
</div>
	<div id="search_result">

	</div>

</body>
</html>