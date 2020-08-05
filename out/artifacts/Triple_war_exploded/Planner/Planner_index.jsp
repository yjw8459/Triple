<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/14
  Time: 12:00 오후
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Triple Planner</title>
</head>
<body>
<table style="width:100%;">
    <tr>
        <td style="height:100px;"><%@ include file="/common/top.jsp" %></td>
    </tr>
    <tr>
        <td style="height:100px;">
            <jsp:include page="Planner_main.jsp"/>
            <%--                <jsp:param value="News_index" name="curPage"/>--%>
            <%--            </jsp:include>--%>
        </td>
    </tr>
    <tr>
        <td style="height:100px;">
            <jsp:include page="/common/footer.jsp"/>
            <%--                <jsp:param value="index" name="curPage"/>--%>
            <%--            </jsp:include>--%>
        </td>
    </tr>
</table>

</body>
</html>
