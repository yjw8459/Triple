<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/08
  Time: 12:00 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.css">
<style>
    #secession{
        border: 1px solid #0f0f0f;
        width: 40%;
    }
    #my_profile{
        background-image: url("../imgs/news_1.png");
    }
    button{
        margin-bottom: 30px;
    }
    input{
        margin: 10px;
    }

    #sec_submit{
        width: 250px;
        height: 80px;
        border-radius: 10px 10px 10px 10px;
        margin: 10px;
    }
    h4{
        position: absolute;
        transform: translate(110%, 100%);
    }
    #secession_pwBox{

    }
</style>
</head>
<body>
<div id="secession">
    <h3>회원탈퇴</h3>
    <div id="my_profile">

    </div>
        <div>
            <span id="secession_pwBox">
                <input id="pw" type="password" class="btn-lg"/><br>
                <input id="pwOk" type="password" class="btn-lg"/>

            </span>
            <div id="sec_submit" class="btn-primary">
                <h4>회 원 탈 퇴</h4>
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
