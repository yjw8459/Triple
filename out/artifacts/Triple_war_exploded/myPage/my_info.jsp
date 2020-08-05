<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/08
  Time: 11:15 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <style>
        #my_info_main{
            border: 1px solid #0f0f0f;
            width: 600px;
            height: 500px;



        }
        #my_info_main div{

            margin: 20px;
        }
        .my_main_items{
            float: left;
        }
        #my_info_top{
            float: left;
            top: 10px;
            width: 100%;
        }
        #my_info_profile{
            background-image: url("../imgs/news_2.png");

        }
        #my_main_items{
            float: right;
        }

    </style>
    <script>
        $(function(){

        })
    </script>
</head>
<body>

<div id="my_info_main" class="container">
<div id="my_info_top">
    <input type="button"  class="btn-primary btn-xs" value="회원정보 수정"/>
    <input type="button"  class="btn-primary btn-xs" value="회원정보 탈퇴"/>
    <br>
</div>
    <br>
    <br>


<%--    label = 값을 전달받아서 innerhtml--%>

    <div id="my_main_items">
    <div class="my_main_item">
        <div id="my_info_profile"></div>
        <div id="my_info_level">등급 : 다이아몬드</div><br>
        <div id="my_info_id">아이디 : yjw8459</div><br>
        <br>
    </div>
    <div class="my_main_item">
        <div id="my_info_mail">이메일 : ryu01410@gmail.com</div><br>
        <div id="my_info_gender">성별 : 남성</div><br>
    </div>
    </div>
</div>
<script
        src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous">
</script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>
