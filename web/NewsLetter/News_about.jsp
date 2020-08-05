<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/07
  Time: 6:17 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="dbControll.jsp"%>
<%

    int no = Integer.parseInt(request.getParameter("no"));
    System.out.println(no);

    List<List<String>> newsLst = getNews();

    List<String> noLst = newsLst.get(0);
    List<String> titleLst = newsLst.get(1);
    List<String> contentsLst = newsLst.get(2);
    List<String> tagLst = newsLst.get(3);
    List<String> dateLst = newsLst.get(4);
    List<String> numLst = newsLst.get(5);
    List<String> urlLst = newsLst.get(6);
    List<String> addLst = newsLst.get(7);
    List<String> seasonLst = newsLst.get(7);
    List<String> hitLst = newsLst.get(7);





%>

<html>
<head>
    <title>Title</title>
    <style>
        #news_about_top{
            width: 100%;
            height: 150px;
            background-color: #aaaaaa;
        }
        #news_about_local{
            width: 20%;
            height: 200px;
            background-color: #aaaaaa;
            position: relative;
            left: 80%;
            top: 90%;
        }
        #news_about_img{
            width: 100%;
        }
    </style>
    <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous">
    </script>
    <script>


    </script>
</head>
<body>
<div id="news_about_main">
    <div id="news_about_top">
<%--        Tag 출력 --%>
        <h2><%=titleLst.get(no-1)%></h2>
        <h5><%=tagLst.get(no-1)%></h5>
    </div>
    <div id="news_about_contents">
    <img src="../imgs/news_<%=no%>.png" id="news_about_img">
        <br><br><br>
    <%=contentsLst.get(no-1)%>
        <br><br><br>
    <hr/>
    </div>
    <div id="news_about_footer">
    <div id="news_about_detail">
    <h5>상세정보</h5>
        <span class="detail_contents">
            <ul>
                <li>시작일&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<%=dateLst.get(no-1)%></li>
                <li>전화번호&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<%=numLst.get(no-1)%></li>
                <li>홈페이지&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<%=urlLst.get(no-1)%></li>
                <li>주소&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<%=addLst.get(no-1)%></li>
            </ul>

        </span>
    </div>

    </div>
</div>

</body>
</html>
