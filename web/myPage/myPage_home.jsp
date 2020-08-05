<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/16
  Time: 4:02 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    ul {list-style: none;}
    .text_wrap.big.fix {
        margin: 0;
        height: 55px;
        text-align:center;
    }
    .title {
        font-size: 22px;
        font-weight: 600;
        color: #111;
    }
    .sns_linkage {
        margin: 70px auto 0;
        display: table;
    }
    .sns_linkage .inr {
        float: none;
        text-align: center;
        display: table-cell;
        vertical-align: middle;
    }
    .inr.right {
        width: 685px;
        padding-left: 100px;
    }
    .sns_linkage .inr .name {
        display: block;
        width: 90px;
        hieght: 90px;
        border-radius: 50%;
        background-color: #f7f7f7;
        font-size: 22px;
        color: #111;
        font-weight: 600px;
        margin: 0 auto;
        line-height: 90px;
    }
    .sns_linkage .inr .email {margin-top: 5px;}
    .sns_linkage .inr.right {border-left: 1px solid #ddd;}
    .sns_linkage .inr.right .btn_wrap {margin: 0;}
    .btn_wrap {text-align: center;}
    ul.btn_wrap li {
        float: left;
        width: 250px;
        padding-bottom: 10px;
    }
    ul.btn_wrap li:nth-child(2n) {padding-left: 10px;}
    ul.btn_wrap li:nth-child(4n) {padding-left: 10px;}
    .sns_linkage .inr.right .btn:first-child {margin-top: 0;}
    .sns_linkage .inr.right .btn {
        display: block;
        margin: 10px 0 0;
    }
    .btn.icn input[type=button] {
        width: 200px;
        height: 50px;
        background-color: #FFFFFF;
        border: 1px solid #C2C2C2;
        border-radius: 5px;
        font-size: 17px;
        color: black;
    }
    .btn.icn input[type=button]:hover {
        border: 1px solid #E5236D;
        color: #E5236D;
    }
    #user {
        background-image: url('../img/user2.png');
        background-repeat: no-repeat;
        background-position: 5% 8px;
    }
    #password {
        background-image: url('../img/password2.png');
        background-repeat: no-repeat;
        background-position: 5% 8px;
    }
    #withdrawal {
        background-image: url('../img/withdrawal2.png');
        background-repeat: no-repeat;
        background-position: 5% 8px;
    }
</style>
<script
        src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous">
</script>
<script>
    $(function(){
        $('#user').click(function(){
            $('#my_container').load('my_info.jsp #my_info_main');
        })
    })
</script>
<form action="<%=request.getContextPath()%>/Account/AccountUpdateProc.jsp" method="post">
    <div id="container">
        <div id="contents">
            <div class="text_wrap big fix">
                <strong class="title">개인정보</strong>
            </div>
            <hr/>
            <div class="sns_linkage ly_wrap">
                <div class="inr">
                    <span class="name">이름</span>
                    <p class="email">이메일</p>
                </div>
                <div class="inr right">
                    <ul class="btn_wrap">
                        <li><a href="myPage.jsp?frmPath=info" class="btn big icn"><input type="button" value="회원정보 수정" id="user"></a></li>
                        <li><a href="" class="btn big icn"><input type="button" value="비밀번호 변경" id="password"></a></li>
                        <li><a href="" class="btn big icn"><input type="button" value="회원정보 수정"></a></li>
                        <li><a href="myPage.jsp?frmPath=info" class="btn big icn"><input type="button" value="회원탈퇴" id="withdrawal"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</form>