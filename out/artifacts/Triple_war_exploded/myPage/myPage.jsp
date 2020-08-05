<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/08
  Time: 10:46 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String frmPath = "my_";
            frmPath += request.getParameter("frmPath");

            frmPath+=".jsp";

    System.out.println(frmPath);



%>
<html>
<head>
    <title>My Page</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous">
    </script>

    <script>
        $(function(){
        //     $('#my_infor').click(function () {
        //         $('#my_container').load('my_info.jsp #my_info_main');
        //
        //     })
        // })
        // $(function(){
        //     $('#my_plan').click(function () {
        //         $('#my_container').load('my_plan.jsp #my_plan');
        //     })
        // })
        // $(function(){
        //     $('#my_review').click(function () {
        //         $('#my_container').load('my_review.jsp #my_reviewA');
        //     })
        // })
        // $(function(){
        //     $('#my_QnA').click(function () {
        //     $('#my_container').load('my_QnA.jsp #my_QnA');
        //     })
        })
    </script>

    <style>
        #my_menu{width: 100%;}
        #my_menu span{
            width: 100px;
            height: 70px;
            color: white;
        }
        #my_top{
            width: 100%;
            height: 200px;
            background-image: url("../imgs/news_1.png");
            background-repeat: no-repeat;
        }
        img{
            width: 100%;
            height: 200px;
            position: relative;
        }
        #myPage h1{
            color: #0f0f0f;
            position: absolute;
            top: 40px;
            left: 50%;
            transform: translate(-50%,-50%);
        }

    </style>
</head>
<body>
<div id="myPage">
    <div id="my_top">

        <h1 align="center">회원정보</h1>

    </div>
    <div id="my_menu" class="btn-primary btn-lg">
        <input type="button" id="my_infor" class="btn-primary btn-lg" value="회원정보"/>
        <input type="button" id="my_plan" class="btn-primary btn-lg" value="나의 여행 일정"/>
        <input type="button" id="my_review" class="btn-primary btn-lg" value="나의 리뷰"/>
        <input type="button" id="my_QnA" class="btn-primary btn-lg" value="Q&A"/>
    </div>

<%--    <jsp:include page="my_info.jsp"></jsp:include>--%>
    <hr class="btn-primary"/>
    <div id="my_container">
        <jsp:include page="<%=frmPath%>"/>

    </div>
</div>
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>
