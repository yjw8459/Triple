<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/16
  Time: 4:51 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .panel.selected {display: block;}
    .msg_wrap.bg {
        background-color: #f7f7f7;
        text-align: center;
        background-image: url('../img/tak.png');
        background-repeat: no-repeat;
        background-position: 35% 15px;
    }
    .msg_wrap .msg_box {display: inline-block;}
    .msg_wrap.bg .title {
        position: relative;
        font-size: 22px;
        font-weight: 400;
        color: #333;
        padding-left: 60px;
        display: block;
        line-height: 1.3;
    }
    em {
        color: #e5236d;
        font-style: normal;
    }
    .mt10 {margin-top: 10px;}
    .text_wrap.mid {
        margin-top: 40px;
        margin-bottom: 24px;
    }
    .text_wrap {
        position: relative;
        margin: 40px 0 0;
        padding: 0;
    }
    .text_wrap.mid strong.title {
        display: inline-block;
        font-size: 17px;
        color: #111;
        font-weight: 200;
    }
    .tb1 {
        table-layout: fixed;
        display: table;
        width: 100%;
    }
    .tb1 table {
        width: 100%;
        border-bottom: 1px solid #ddd;
        table-layout: fixed;
        border-top: 1px solid #999;
    }
    .tb1 tr{
        border-bottom: 1px solid #ddd;
    }
    .tb1 th {
        border-right: 1px solid #ddd;
        background-color: #f7f7f7;
        font-size: 15px;
        font-weight: 600;
        color: #111;
    }
    .tb1 td {
        text-align: left;
        min-height: 54px;
        padding: 15px 20px;
        font-weight: 400;
        line-height: 23px;
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
    .text_box.udline {
        border-top: 1px solid #838999;
        border-bottom: 1px solid #dadce1;
        padding: 10px 0;
    }
    .text_box.udline .form_wrap {
        margin: -10px 20px;
    }
    .text_box.udline .form_holder {
        width: 33%;
        margin: 15px 0;
    }
    span.form_holder {
        display: inline-block;
    }
    .form_holder input[type=radio] {
        position: absolute;
        opacity: 5;
    }
    .wp100 {
        width: 100% !important;
        border: 1px solid #cdcdcd;
        border-radius: 2px;
        padding: 16px;
    }
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
        <div id="contents" class="panel selected">
            <div class="msg_wrap bg">
                <div class="msg_box tx1">
                    <strong class="title">
                        <em>그동안 보내주신 성원에 감사드립니다.</em>
                    </strong>
                    <div class="mt10">
                        - 개인정보 취급방침에 의거하여 모든 개인정보가 삭제됩니다.
                    </div>
                </div>
            </div>
            <!-- Proc 전달 부분 -->
            <form>
                <div class="text_wrap mid">
                    <strong class="title">가입정보</strong>
                </div>
                <div class="tb1">
                    <table class="type2">
                        <tbody>
                        <tr>
                            <th>아이디</th>
                            <td>getID</td>
                        </tr>
                        <tr>
                            <th>비밀번호</th>
                            <td>
                                <div class="form_holder">
                                    <input type="password" placeholder="비밀번호를 입력해 주세요.">
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- 탈퇴사유 -->
                <div class="cont_unit">
                    <div class="text_wrap mid"><strong class="title">탈퇴 사유</strong></div>
                    <div class="text_box udline">
                        <div class="form_wrap">
                  <span class="form_holder radio">
                     <input type="radio" id="chkDefaultB101" class="inpt_radio">
                     <label for="chkDefaultB101" class="label_radio">문의사항에 대한 불친절한 응대</label>
                  </span>
                            <span class="form_holder radio">
                     <input type="radio" id="chkDefaultB101" class="inpt_radio">
                     <label for="chkDefaultB101" class="label_radio">개인정보 및 보안우려</label>
                  </span>
                        </div>
                    </div>
                </div>
                <div class="cont_unit">
                    <div class="text_wrap mid"><strong class="title">트리플에 바라는 점(선택입력)</strong></div>
                    <div class="text_box udline">
                        <textarea rows="7" placeholder="바라는 점을 입력해주세요." class="wp100"></textarea>
                    </div>
                </div>
                <input type="button" value="취소" id="cancelBtn"/>
                <input type="button" value="확인" id="okBtn"/>
            </form>
        </div>
    </div>
</center>