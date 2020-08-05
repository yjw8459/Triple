<%@ page import="com.sun.xml.internal.ws.server.ServerRtException" %><%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/14
  Time: 10:56 오전
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="Map_DBControl.jsp"%>
<%
    String local = request.getParameter("local");
    request.setAttribute("local",local);
    System.out.println("$"+local+"$");
    List<List<String>> planLst = getLocal(local);
    List<String> localLst = planLst.get(0);
    List<String> titleLst = planLst.get(1);
    List<String> xLst = planLst.get(2);
    List<String> yLst = planLst.get(3);
    List<String> noLst = planLst.get(4);
    System.out.println(localLst.size());



    String str = "";
    for (int i=0; i<10; i++){
        str+= "{ content:'<div>"+titleLst.get(i)+"</div>',"+
                "latlng:new kakao.maps.LatLng("+xLst.get(i)+","+yLst.get(i)+")},";
    }



%>

<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../css/bootstrap.css">

<style>
    div {
        box-sizing: border-box;
    }
    #container {
        width: 100%;
    }
    .left_full_box {
        border-right: solid 1px #a7a7a7;
        height: 100%;
        z-index: 999;

    }
    .f1 {
        float:left;
    }
    #city_list_box {
        display: block;
        height: 900px;
        overflow-y: scroll;
    }
    #city_list_box .item {
        padding: 15px;
        cursor: pointer;
        border-bottom: solid #a7a7a7 1px;
        background-color: #fff;
        width: 248px;
        position: relative;
    }
    .toggled {
        background-color: #aaa;
    }
    #city_list_box .item:hover {
        background-color: #F7F7F7;
    }
    .item .img_box {
        width: 62px;
        height: 55px;
        position: relative;
    }
    .item .info_box {
        width: 140px;
        margin-left: 5px;
    }
    .item .info_title {
        font-size: 15px;
        color: #363636;
    }
    item .info_sub_title {
        font-size: 15px;
        color: #b3b3b3;
        margin-top: 5px;
    }
    .spot_to_inspot {
        cursor: pointer;
        position: absolute;
        top: 25px;
        right: 15px;
    }
    .clear {
        clear: both;
    }
    #right_full_box {
        position: absolute;
        left: 336px;
        top: 62px;
    }
    #center_full_box {
        position: absolute;
    }
    #map {
        width: 60%;
        height: 905px;
        position: relative;
        overflow:hidden;
        float: left;


    }
    #createPlan {
        width: 50%;
        height: 80px;
    }
    #calendar{
        overflow:hidden;
        width: 30%;
        height: 905px;
        float: right;
    }
    #plan_make {
        width: 100%;
        height: 60px;
    }
    .city_items {

        border-radius: 5px;
        width: 430px;
        height: 80px;
        float: right;
        margin: 5px;
        padding:25px 0px;
        box-sizing: border-box;
    }
    font{
        font-weight: bold;
        font-size: large;
        font-style: italic;
    }
</style>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1941ec848f892810b1c0446034335c3b"></script>
<script
        src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous">
</script>

<body>
<form action="Map_sel.jsp" id="map_form">
    <%@include file="Planner_side.jsp"%>
    <div class="table-striped">
        <%for(int i =0; i<titleLst.size();i++){%>

    <div class="city_items btn-primary" align="center">
        <div>
            <div>
                <font class=""><%=titleLst.get(i)%></font>
            </div>


        </div>
    </div>

        <%}%>

    </div>
    <div>
        <script>

            var planSize = 170;
            var mapContainer = document.getElementById('map');

            var mapOption = {
                center : new kakao.maps.LatLng(36.57708969309502, 128.09484733129298),
                level: 13
            };
            var map = new kakao.maps.Map(mapContainer, mapOption);

            var positions = [


            ]
            positions.push(<%=str%>);

            for(var i=0; i<positions.length; i++) {
                var marker = new kakao.maps.Marker({
                    map: map,
                    position: positions[i].latlng
                });

                var infowindow = new kakao.maps.InfoWindow({
                    content: positions[i].content
                });

                kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
                kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
            }
            function makeOverListener(map, marker, infowindow) {
                return function() {
                    infowindow.open(map,marker);
                };
            }
            function makeOutListener(infowindow) {
                return function() {
                    infowindow.close();
                };
            }
        </script>
        <div><input type="button" id="plan_make" value="일정만들기"></div>
    </div>

    <script>
        $(document).ready(function() {
            $('.spot_to_inspot').each(function(index,item){
                $(item).attr('id','img'+index);

            })

            $('.item').each(function(index,item){
                $(item).attr('id','item'+index); //item의 아이디 값
                $('#img'+index).click(function() {
                    $('#item'+index).toggleClass('item');
                    $('#item'+index).toggleClass('toggled');
                    //??
                })
            })
            $('.item').click(function () {
                var frm = document.getElementById("map_form");
                frm.submit();
            })
            $('.city_items').each(function(index){
                $(this).click(function (index) {
                    $(this).toggleClass('btn-warning');
                    //버튼 눌렀을 시 색깔 변경


                })
            })
        })

    </script>
    <div id="result">


    </div>

</form>
<script src="../js/bootstrap.js"></script>
</body>
</html>