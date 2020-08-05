<%
    String frmPath ="News_home";


    frmPath += ".jsp";
%>
<html>
<head>
    <title>NewsLetter !!</title>
</head>
<body>
<table style="width:100%;">
    <tr>
        <td style="height:100px;"><%@ include file="/common/top.jsp" %></td>
    </tr>
    <tr>
        <td style="height:100px;">
            <jsp:include page="<%=frmPath %>"/>
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
