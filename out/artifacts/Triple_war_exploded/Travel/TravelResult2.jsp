<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="TravelResultProc.jsp"%>
<%
	
    String sqlNum = request.getParameter("sqlNum");
	String no = (String) session.getAttribute("no");
	getTravelSelect(sqlNum);
	
List<List<String>> travelLst = getTravelSelect(sqlNum);


List<String> noList =travelLst.get(0);
List<String> titleLst = travelLst.get(1);
List<String> conList = travelLst.get(2);
List<String> travelcourseList = travelLst.get(3);
List<String> travelxList = travelLst.get(6); 
List<String> travelyList = travelLst.get(7); 


/* travelcourseList = travelcourseList.replace("\r\n", "<br>");
/* String[] str = travelcourseList.get(3).split("	"); */ 

%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>TravelResult</title>
<style>
#contents {
	font-family: 'DoHyeon-Regular';
	font-size: 15px;
	border: 1px solid #D5D5D5;
	width: 800px;
	height: auto;
	margin-bottom: 50px;
}

#travelInfo {
	font-family: 'DoHyeon-Regular';
	font-size: 15px;
	border: 1px solid #D5D5D5;
	width: 800px;
	height: auto;
	margin-bottom: 50px;
}

#map {
	border: 1px solid #D5D5D5;
	margin-top: 10px;
	margin-bottom: 50px;
}

@font-face {
	font-family: 'DoHyeon-Regular';
	src: url("../fonts/DoHyeon-Regular.ttf");
}

#title{
	font-size: 50px;
	font-family: 'DoHyeon-Regular';
}

h1{
	font-family: 'DoHyeon-Regular';
	position: relative;
}
</style>
<script src="<%=request.getContextPath()%>/write/file_upload.js"></script>
</head>
<body>

	<form id="frm"
		action="<%=request.getContextPath()%>/write/file_uploadProc.jsp"
		method="post">
		<div id="upload" align="center">
			<%
				{
			%>
			<Label id="title"><%=titleLst.get(Integer.parseInt(no))%></Label>
			<br /> <br /> <br />

			<h1>여행 이미지</h1>
			<br /> <img src="../TravelImg/test<%=noList.get(Integer.parseInt(no))%>.jpg" name="img4" id="img4" class="img4"
				width="800" height="500">

			<h1>여행 내용</h1>
			<div id="contents" align="left"><%=conList.get(Integer.parseInt(no))%></div>
			
			<h1>여행 정보</h1>
			<div id="travelInfo" align="left">
				<%=travelcourseList.get(Integer.parseInt(no)) %>
				<br>
				<br>
			</div>
			
			<h1>여행 지역</h1>
			<div id="map" style="width: 800px; height: 500px;">
			
			</div>

			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f988a72163d917c26e511133d539141c"></script>
			<script>
				var container = document.getElementById('map');

				var options = {

					center : new kakao.maps.LatLng(<%=travelxList.get(Integer.parseInt(no)) %>,<%=travelyList.get(Integer.parseInt(no)) %>), //위도와 경도 지정
					level : 4
				// 줌 포인트 높이
				};
				var map = new kakao.maps.Map(container, options);

				var markerPosition = new kakao.maps.LatLng(<%=travelxList.get(Integer.parseInt(no)) %>,<%=travelyList.get(Integer.parseInt(no)) %>); //마커가 표시 위치

				var marker = new kakao.maps.Marker({
					position : markerPosition
				// 마커를 생성
				});

				marker.setMap(map);// 마커가 지도 위에 표시되도록 설정
				<%
				}
			%>
			</script>

		</div>
	</form>

</body>
</html>