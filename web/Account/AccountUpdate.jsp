<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="AccountProc.jsp" %>
<%
    String usrId = (String)session.getAttribute("usrId");
    List<List<String>> memberLst = getMembers();

    List<String> nameLst = memberLst.get(0);
    List<String> emailLst = memberLst.get(4);
    List<String> idLst = memberLst.get(2);
    String name = "dd";
    String mail = "ad";


    for(int i=0; i<nameLst.size();i++){
        if(usrId.contentEquals(idLst.get(i))){
            name = nameLst.get(i);
            mail = emailLst.get(i);
        }
    }
%>
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
        background-image: url('img/user2.png');
        background-repeat: no-repeat;
        background-position: 5% 8px;
    }
    #password {
        background-image: url('img/password2.png');
        background-repeat: no-repeat;
        background-position: 5% 8px;
    }
    #withdrawal {
        background-image: url('img/withdrawal2.png');
        background-repeat: no-repeat;
        background-position: 5% 8px;
    }
</style>
<form action="<%=request.getContextPath()%>/Account/AccountUpdateProc.jsp" method="post">
    <div id="container">
        <div id="contents">
            <div class="text_wrap big fix">
                <strong class="title">개인정보</strong>
            </div>
            <hr/>
            <div class="sns_linkage ly_wrap">
                <div class="inr">
                    <span class="name"><%=name %></span>
                    <p class="email"><%=mail %></p>
                </div>
                <div class="inr right">
                    <ul class="btn_wrap">
                        <li><a href="<%=request.getContextPath() %>/index.jsp?frmPage=AccountPwChange" class="btn big icn"><input type="button" value="회원정보 수정" id="user"></a></li>
                        <li><a href="" class="btn big icn"><input type="button" value="비밀번호 변경" id="password"></a></li>
                        <li><a href="" class="btn big icn"><input type="button" value="회원정보 수정"></a></li>
                        <li><a href="<%=request.getContextPath() %>/index.jsp?frmPage=AccountWithdrawal" class="btn big icn"><input type="button" value="회원탈퇴" id="withdrawal"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</form>