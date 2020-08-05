<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/06
  Time: 8:15 오후
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="dbControll.jsp"%>
<%
    request.setCharacterEncoding("UTF-8");
    int itemSize = 13;
    List<List<String>> newsLst = getNews();
    List<String> titleLst = newsLst.get(1);

    List<String> tagLst = newsLst.get(3);
    List<String> dateLst = newsLst.get(4);





%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>NewsLetter</title>
    <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous">
    </script>
    <style type="text/css">
        .news_img{
            width: 400px;

            /* padding: 4px; */
            box-sizing: border-box;
            margin: 40px;
            display: inline-block;
            border: 1px solid #aaaaaa;


            /* align : left; */
        }
        #news_detail_view{
            display: inline;
        }

        .img{
            width: 400px;
            height: 200px;
        }
        #news_top{
            width: 100%;
            height: 300px;
            background-image: url("<%=request.getContextPath()%>/img/mainbanner.jpg");

        }
        #news_imgtable{
            width: 100%;

        }
        #news_main{
            width: 100%;}
        #news_home_contents{
            width: 100%;
            height: 400px;
            display: inline;
        }
        #view label{

            left: 50px;
        }
        .hot_item{
            width: 400px;
            height: 500px;
            display: inline-block;
        }
        #view label{
            cursor: pointer;

        }
        #view label:hover{
            color: #aaaaaa;
        }
        #news_about a{
            font-weight: bold;
            font-style: italic;
            font-size: 20px;
        }
        #view{
            height: 350px;
        }
    </style>
    <script type="text/javascript">
        $id=function(id){
            return document.getElementById(id);
        }
        $(function(){

            // $('#news_hot').click(function(){
            //     $('#news_imgtable').load('News_detail_result.jsp');
            //     //news_hot를 클릭했을 때 News_result.jsp에서 처리된 결과를 #news_imgtable에 추가
            // })
            $('#news_hot').click(function(){
                $('#news_home_contents').load('News_HOT.jsp #hot_items');
            })
            $('#news_best').click(function(){

            })
        })

    </script>
</head>
<body>
<center>
<div id="news_main">

    <div id="news_top">
<%--상단 공통 메뉴바 --%>

    </div>
    <div id="view">
        <label id="news_hot" >HOT</label>
        <label id="news_best"
               >추천</label>
        <hr class="btn-primary">
        <div id="news_home_contents">


        </div>

        </div>
    <hr/>
    <div id="news_detail">
        <div id="news_about"><a href="News_detail.jsp">모든 뉴스레터 보기 </a></div>
        <div id="news_detail_view">
            <div id="news_imgtable" align="center">
                <%for(int i =1; i < itemSize; i++){
                %><div class="news_img">
                <img alt="로딩실패" src="../imgs/news_<%=i%>.png" class="img">
                <p><h4><%=titleLst.get(i)%></h4></p>
                <p><h5><%=tagLst.get(i)%></h5></p>
                <p><h6><%=dateLst.get(i)%></h6></p>
            </div>
                <% if(i%3==0){%><br>
                <% }%>
                <%}%>

        </div>
    </div>
</div>
</div>
</center>
</body>
</html>

