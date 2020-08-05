<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/16
  Time: 4:08 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .msg_wrap.bg {
        background-color: #f7f7f7;
        padding: 40px 65px 40px 155px;
        position: relative;
        background-image: url('../img/password2.png');
        background-repeat: no-repeat;
        background-position: 42% 55px;
    }
    .msg_wrap.bg .title {
        position: relative;
        font-size: 22px;
        font-weight: 400;
        color: #333;
    }
    .msg_wrap .title {
        padding-left: 60px;
        display: block;
    }
    em {
        color: #e5236d;
        font-style: normal;
    }
    .form {
        margin-top: 40px;
        border-top: 1px solid #aaa;
    }
    .form table {
        width: 100%;
        border-bottom: 1px solid #ddd;

    }
    .form table.type2 td {
        border-bottom: 1px solid #ddd;
    }
    .form table.type2 th {
        border-right: 1px solid #ddd;
    }
    .form th {
        width: 20%;
        background-color: #f7f7f7;
        font-size: 15px;
        font-weight: 600;
        color: #111;
        text-align: left;
        min-height: 54px;
        padding: 15px 20px;
        border-bottom: 1px solid #ddd;
    }
    .form_holder {
        padding: 15px;
    }
    input[type=password] {
        width: 500px;
        height: 42px;
        padding: 0 15px;
        border: 1px solid #cdcdcd;
        background-color: #fff;
        border-radius: 2px;
    }
    input[type=password]:focus {outline: 1px solid #5b606e;}
    input[type=button] {
        width: 150px;
        height: 50px;
        margin-top: 10px;
        border-radius: 5px;
    }
    #cancelBtn {
        color: #fff;
        background-color: #5b606e;
        border: solid 1px #5b606e;
    }
    #cancelBtn:hover{background-color: #696E7D;}
    #okBtn {
        color: #fff;
        background-color: #e5236d;
        border: solid 1px #e5236d;
    }
    #okBtn:hover {background-color:#F22C78;}
</style>
<center>
    <div id="container">
        <div id="contents">
            <div class="msg_wrap bg">
                <strong class="title">
                    <em>이름</em> 님의 개인정보 보호를 위해<br>
                    비밀번호를 주기적으로 변경해 주세요.
                </strong>
            </div>
            <form>
                <div class="form">
                    <table class="type2">
                        <tbody>
                        <tr>
                            <th>현재 비밀번호</th>
                            <td>
                                <div class="form_holder">
                                    <input type="password" placeholder="현재 비밀번호를 입력해주세요.">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>신규 비밀번호</th>
                            <td>
                                <div class="form_holder">
                                    <input type="password" placeholder="현재 비밀번호를 입력해주세요.">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호 확인</th>
                            <td>
                                <div class="form_holder">
                                    <input type="password" placeholder="현재 비밀번호를 입력해주세요.">
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <input type="button" value="취소" id="cancelBtn"/>
                    <input type="button" value="확인" id="okBtn"/>
                </div>
            </form>
        </div>
    </div>
</center>