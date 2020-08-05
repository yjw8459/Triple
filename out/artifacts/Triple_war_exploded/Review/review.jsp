<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/13
  Time: 4:29 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../css/bootstrap.css">
<script type="text/javascript" src="../js/bootstrap.js"></script>
<center>
    <%@include file="../common/top.jsp"%>
    <form id="frm" action="review_write.jsp" method="post">
        <input type="hidden" name="curPage" value="CustomerBoard"/>
        <table class="table-striped">
            <thead>
            <tr>
            <div><h1 class="btn-primary" style="width: 40%">나의 후기</h1></div>
            </tr>
            <tr>
                <th style="width: 40px; height:20px;" align="center">선택</th>
                <th style="width: 330px; height:20px;" align="center">제 목</th>
                <th style="width: 80px; height:20px;" align="center">작성자</th>
                <th style="width: 120px; height:20px;" align="center">작성일</th>
                <th style="width: 80px; height:20px;" align="center">조회수</th>
            </tr>
            </thead>
            <tr>
                <td style="width: 40px; height:20px;" align="center"><hr/></td>
                <td style="width: 330px; height:20px;" align="center"><hr/></td>
                <td style="width: 80px; height:20px;" align="center"><hr/></td>
                <td style="width: 120px; height:20px;" align="center"><hr/></td>
                <td style="width: 80px; height:20px;" align="center"><hr/></td>
            </tr>
            <tr>
                <td style="width: 40px; height:40px;" align="center"><input type="checkbox" name="checkBoxTitle"/></td>
                <td style="width: 330px; height:40px;" align="center"></td>
                <td style="width: 80px; height:40px;" align="center"></td>
                <td style="width: 120px; height:40px;" align="center"></td>
                <td style="width: 80px; height:40px;" align="center"></td>
            </tr>
            <tr><td colspan=5><hr/></td></tr>
            <tr>
                <td colspan=2><input type="checkbox" name="checkBoxTitleAll"/>전체선택</td>
                <td colspan=3 align="right">
                    <input type="button" value='삭제' style="width: 100px; "/>
                    <input type="submit" value='글쓰기' style="width: 100px; "/>
                </td>
            </tr>
            <tr><td colspan=5><hr/></td></tr>
        </table>
    </form>

</center>
