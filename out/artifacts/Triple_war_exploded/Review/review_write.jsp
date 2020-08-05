<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/13
  Time: 4:30 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Review</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
</head>
<body>
<center>
    <table style="width: 650px; ">
        <tr>
            <td style="width: 80px; height:40px;" align="right">작성자</td>
            <td style="width: 570px; height:40px;">
                <input type=text name='writer'/>
            </td>
        </tr>
        <tr>
            <td  style="width: 80px; height:40px;" align="right">제 목</td>
            <td style="width: 570px; height:40px;">
                <input type=text name='title' style="width: 500px; "/>
            </td>
        </tr>
        <tr>
            <td colspan=2 align="right"><textarea style="width: 650px; height: 300px"></textarea></td>
        </tr>
        <tr>
            <td align='right' height=40 colspan=2>
                <input type=file style="width: 300px; "/>
            </td>
        </tr>
        <tr>
            <td align='center' height=40 colspan=2>
                <input type=submit value='글쓰기' style="width: 120px; "/>
                <input type=reset value='취소' style="width: 120px; "/>
            </td>
        </tr>
    </table>
</center>


<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>
