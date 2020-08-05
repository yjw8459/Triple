<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/12
  Time: 9:10 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="dbControll.jsp"%>
<%
    //조회 수 순으로 게시물 출력
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
<html>
<head>

    <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous">
    </script>
    <STYLE>
    .hot_item{
        width: 400px;
        height: 500px;
        display: inline;
    }
        img{
            width: 400px;
            height: 400px;
        }




    </STYLE>
</head>
<body>
<span id="hot_items">

    <%for(int i=0; i<4; i++){

    %><div class="hot_item"><a>
       <img src="../imgs/news_<%=noLst.get(i)%>.png" alt="로딩실패 " class="img">
        <h5 class="hot_title"><%=titleLst.get(i)%> </h5>
        <h6 class="hot_date"><%=dateLst.get(i)%> </h6>
    </a>
    </div>


        <%}%>

    </span>

</body>
</html>
