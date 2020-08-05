<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%
   		request.setCharacterEncoding("UTF-8");
   
   	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file_upload</title>
<style>
#TravelImg{
	border: 3px solid #aaa;
	margin-bottom: 20px;
}
#attachList {
   border: 2px solid #aaa;
   width: 800px;
   height: 200px;
}
#btnSend{
	border-radius : 10px 10px 10px 10px;
	margin-top : 10px;
	margin-bottom : 20px;
	width: 200px;
	height: 50px;
	 border: 2px solid #aaa;
}
#contents {
font-family: 'DoHyeon-Regular';
	font-size: 30px;
   border: 2px solid #aaa;
   width: 800px;
   height: 300px;
}

#travelcourse {
	font-size: 30px;
	font-family: 'DoHyeon-Regular';
   border: 2px solid #aaa;
   width: 800px;
   height: 200px;
}


#tema{
	border: 1px solid #aaa;
	width : 600px;
	height : 50px;
	font-family: 'DoHyeon-Regular';
	font-size: 20px;
	margin-bottom: 30px;
}

#local{
	border: 1px solid #aaa;
	width : 800px;
	height : 50px;
	font-family: 'DoHyeon-Regular';
	font-size: 20px;
	margin-bottom: 20px;
}
#btnSend{
	font-family: 'DoHyeon-Regular';
	font-size: 20px;
}
#tema1{
font-family: 'DoHyeon-Regular';
font-size: 20px;

}
#travelx,#travely{
	font-family: 'DoHyeon-Regular';
	font-size: 20px;
	border: 3px solid #aaa;
}

#title{
	font-family: 'DoHyeon-Regular';
	font-size: 20px;
	border: 3px solid #aaa;
   	width: 800px;
   	height: 50px;
}
@font-face {
	font-family: 'DoHyeon-Regular';
	src: url("../fonts/DoHyeon-Regular.ttf");
}
h1,h3 {
font-family: 'DoHyeon-Regular';
	position: relative;
}

</style>
<script src="<%=request.getContextPath() %>/write/file_upload.js"></script>
</head>
<body>

<form id="frm" action="<%=request.getContextPath() %>/write/file_uploadProc.jsp" method="post">
<div id="upload" align="center">
   <h1>여행지 등록하기</h1><br><br>
   		
   		<h3>여행 지역</h3>
       <div>
    		<select name="local" id="local">
    		
			<option value="#서울" id="tema1">#서울</option>
			<option value="#경기도" id="tema1">#경기도</option>
			<option value="#강원도" id="tema1">#강원도</option>
			<option value="#충청도" id="tema1">#충청도</option>
			<option value="#경상도" id="tema1">#경상도</option>
			<option value="#전라도" id="tema1">#전라도</option>
			<option value="#부산" id="tema1">#부산</option>
			<option value="#제주도" id="tema1">#제주도</option>
			
			
		</select>
		</div>
   		
   		
   		
      <h3>제 목</h3>
      <input type="text" name="title" id="title">
      <br/>
      <h3>여행 이미지</h3>
      <input type="file" name="TravelImg" id="TravelImg"  multiple/>
      
      
            
      <div id="attachList"></div>
      <p/>
       <h3>여행 내용</h3>
       <div>
      <!--  <input type="text" id="contents" name="contents"> -->
      <textarea id="contents" name="contents"></textarea>
       </div>
       
        <h3>여행 코스</h3>
       <div>
      <!--  <input type="text" id="travelcourse" name="travelcourse"> -->
       <textarea id="travelcourse" name="travelcourse"></textarea>
      
      <h3>여행지역 X,Y</h3>
     <span> <input type="text" name="travelx" id="travelx"></span>
     <span> <input type="text" name="travely" id="travely"></span>
      <br/>
      
      
       </div>
       
       <h3>여행 테마</h3>
       <div>
    		<select name="tema" id="tema">
    		
			<option value="1" id="tema1">#혼자여행</option>
			<option value="2" id="tema1">#도시감성</option>
			<option value="3" id="tema1">#휴양지</option>
			<option value="4" id="tema1">#우정여행</option>
			
		</select>
		</div>
    	
    
    
       
      <input type="submit" id="btnSend" value="전송"/>
     
</div>

 <script>
   // form tag, 첨부버튼, 전송버튼, 미리보기 영역, 서버페이지
   upload.start('frm', 'TravelImg', 'btnSend', 'attachList', '<%=request.getContextPath() %>/write/file_upload_result.jsp');
</script> 
</form>
</body>

</html>
