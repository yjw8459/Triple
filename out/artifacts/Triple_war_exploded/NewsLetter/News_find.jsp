<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/13
  Time: 12:31 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="dbControll.jsp"%>
<%  String findStr = null;
    if(request.getParameter("findStr")!=null){
        findStr = request.getParameter("findStr");

    }



        List<List<String>> newsLst = getNews();
        List<String> noLst = newsLst.get(0);
        List<String> titleLst = newsLst.get(1);
        List<String> contentsLst = newsLst.get(2);
        List<String> tagLst = newsLst.get(3);
        List<String> dateLst = newsLst.get(4);
        List<String> numLst = newsLst.get(5);
        List<String> urlLst = newsLst.get(6);
        List<String> addLst = newsLst.get(7);
        List<String> seasonLst = newsLst.get(8);
        if(findStr!=null){
            newsLst = find(findStr);
            titleLst = newsLst.get(0);
            dateLst = newsLst.get(1);
            tagLst = newsLst.get(2);
            //검색어가 있을 시 바꿔줌
        }

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="news_find" class="container">
    <%--    홈 -> 매거진 -> 뉴스레터  경로 바   --%>

    <% int j =1;
        for(int i=1; i<titleLst.size(); i++){

    %><div class="news_items">
            <span>
                <img src="../imgs/news_<%=i%>.png" alt="로딩실패" class="img">
            </span>
    <h5><a href="News_about.jsp?no=<%=noLst.get(i-1)%>"
           onclick="window.open(this.href,'_blank','width=800px,height=1200px,toolbar=no,scrollbars=no');
            return false;"><%=titleLst.get(i-1)%></a></h5>
    <p>날짜</p>

</div>
    <%if(j%3==0){ %><br><%} j++;%>
    <%  }%>
</div>

</body>
</html>
