<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/06
  Time: 8:19 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="dbControll.jsp"%>
<%--news Home에 Tab 배너 ajax 처리 --%>
<%
    List<List<String>> hotLst = hot();
    List<String> noLst = hotLst.get(0);
    List<String> titleLst = hotLst.get(1);
    List<String> dateLst = hotLst.get(2);
    List<String> tagLst = hotLst.get(3);

    for (int i=0; i<4;i++){
        System.out.println(noLst.get(i));
        System.out.println(titleLst.get(i));
        System.out.println(dateLst.get(i));

        System.out.println(tagLst.get(i));
    }
%>
<a href="http://www.naver.com">네이버</a>

