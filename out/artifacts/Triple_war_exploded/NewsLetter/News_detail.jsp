<%@ page import="javax.sound.midi.Soundbank" %><%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/06
  Time: 9:45 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="dbControll.jsp"%>
<%@include file="../common/top.jsp"%>
<%!
    public void eventProc(){

    }
%>
<%
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



    String findStr = null;
    int size = 13;
    String imgPath = "../imgs/news_";
    String imgExt = ".png";

    
%>
<html>
<head>
    <title>News Detail</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <style>
        #news_top{
            width: 100%;
            height: 150px;
            position: relative;
        }
        #news_top_text{
            position: absolute;
        }
        #news_detail_main{

        }
        .news_items{
            width: 200px;
            height: 200px;
            margin: 10px;


        }


        .img{
            width: 400px;

        }
        select{
            width: 70px;
            height: 30px;
        }
        .news_items{
            display: table-cell;
            padding: 20px;
            box-sizing: border-box;
        }
        #news_footer{
            margin-bottom: 30px;
        }

    </style>
    <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous">
    </script>
    
    <script>
        $id =function (id) {
            return document.getElementById(id);
        }
        function findStr(){
            //News_find에 검색어 전달
            var search = $('#findStr').val();
            alert(search);
            $('#news_contents').load('News_find.jsp?findStr='+search);
        }
        $(function(){
            $('#news_contents').load('News_find.jsp #news_find');
            $('#search').click(function () {
                    findStr();
            })
        })
    </script>
</head>
<body>

<div id="news_detail">
    
    <div id="news_detail_top">
        <h2 id="news_top_text">뉴스레터</h2>
    <div style="width: 100%;height: 300px" class="btn-primary">

    </div>

    </div>
    <div id="news_contents">


    </div>
    <div id="news_footer" align="center">
        <label for="findStr" style="font-size: 30px; font-weight: bold">게시물 검색</label>
        <select id="news_find_sel">
            <option id="news_find_op1">제목</option>
            <option id="news_find_op2">축제</option>
            <option id="news_find_op3">뉴스</option>
        </select>
        <input type="text" placeholder="검색어를 입력하세요." id="findStr" size="40" style="height: 40px">
        <input type="button" value="검색" id="search" class="btn-primary btn-lg" size="30"
        >
    </div>
</div>
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>
<%@include file="../common/footer.jsp"%>

