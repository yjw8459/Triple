<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/13
  Time: 4:34 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>file_upload</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
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
            border: 2px solid #aaa;
            width: 800px;
            height: 300px;
        }

        #travelCourse {
            border: 2px solid #aaa;
            width: 800px;
            height: 200px;
        }

        #btnAttach{
            border: 1px solid #aaa;
            margin-bottom: 20px;
        }

        #title{
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

        <h3>제 목</h3>
        <input type="text" name="title" id="title">
        <br/>
        <h3>여행 이미지</h3>
        <input type="file" name="TravelImg" id="TravelImg"  multiple/>



        <div id="attachList"></div>
        <p/>
        <h3>여행 내용</h3>
        <div><input type="text" id="contents" name="contents"></div>

        <h3>여행 코스</h3>
        <div><input type="text" id="travelCourse" name="travelCourse"></div>
        <h3>여행 테마</h3>
        <div>
            <select name="tema" id="tema">

                <option value="1">#혼자여행</option>
                <option value="2">#도시감성</option>
                <option value="3">#휴양지</option>
                <option value="4">#우정여행</option>

            </select>
        </div>




        <input type="submit" id="btnSend" value="전송"/>

    </div>

    <%--  <script>
       // form tag, 첨부버튼, 전송버튼, 미리보기 영역, 서버페이지
       upload.start('frm', 'TravelImg', 'btnSend', 'attachList', '<%=request.getContextPath() %>/write/file_upload_result.jsp');
    </script>  --%>
</form>
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>

</html>