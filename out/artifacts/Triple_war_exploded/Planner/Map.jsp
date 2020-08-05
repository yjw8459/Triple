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
    List<List<String>> planLst = getPlan();
    List<String> localLst = planLst.get(0);
    List<String> titleLst = planLst.get(1);
    List<String> xLst = planLst.get(2);
    List<String> yLst = planLst.get(3);
    List<String> noLst = planLst.get(4);

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
            width: 55%;
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
    <%@include file="Calendar.jsp"%>
    <div>
        <script>

            var planSize = 170;
            var mapContainer = document.getElementById('map');

            var mapOption = {
                center : new kakao.maps.LatLng(36.57708969309502, 128.09484733129298),
                level: 13
            };
            var map = new kakao.maps.Map(mapContainer, mapOption);
            <%


            %>
            var positions = [

                {
                    content: '<div>서울</div>',
                    latlng: new kakao.maps.LatLng(37.56017376037095, 126.97330071852909)
                },
                {
                    content: '<div>부산</div>',
                    latlng: new kakao.maps.LatLng(35.18902828940665, 129.08765343709558)
                },
                {
                    content: '<div>제주도</div>',
                    latlng: new kakao.maps.LatLng(33.369137312966245, 126.53451726408638)
                },
                {
                    content: '<div>인천</div>',
                    latlng: new kakao.maps.LatLng(37.38439082333994, 126.66117418782147)
                },
                {
                    content: '<div>대전</div>',
                    latlng: new kakao.maps.LatLng(36.3508016342678, 127.38440166373996)
                },
                {
                    content: '<div>대구</div>',
                    latlng: new kakao.maps.LatLng(35.87940079347053, 128.5954141459484)
                },
                {
                    content: '<div>광주</div>',
                    latlng: new kakao.maps.LatLng(35.179245325940364, 126.85044245925249)
                },
                {
                    content: '<div>울산</div>',
                    latlng: new kakao.maps.LatLng(35.56348080588944, 129.3005893030789)
                },
                {
                    content: '<div>세종특별자치시</div>',
                    latlng: new kakao.maps.LatLng(36.61876971456634, 127.24836183454035)
                },
                {
                    content: '<div>경기도</div>',
                    latlng: new kakao.maps.LatLng(37.38402980655906, 127.44742536714901)
                },
                {
                    content: '<div>강원도</div>',
                    latlng: new kakao.maps.LatLng(37.700788242697215, 128.28532700666773)
                },
                {
                    content: '<div>충청북도</div>',
                    latlng: new kakao.maps.LatLng(36.80963406146809, 127.86864817627433)
                },
                {
                    content: '<div>충청남도</div>',
                    latlng: new kakao.maps.LatLng(36.19453874586802, 127.01931250520786)
                },
                {
                    content: '<div>경상북도</div>',
                    latlng: new kakao.maps.LatLng(36.40506048833501, 128.6175104181268)
                },
                {
                    content: '<div>경상남도</div>',
                    latlng: new kakao.maps.LatLng(35.47391644486985, 128.5535181817519)
                },
                {
                    content: '<div>전라북도</div>',
                    latlng: new kakao.maps.LatLng(35.69575171271861, 127.32466422181973)
                },
                {
                    content: '<div>전라남도</div>',
                    latlng: new kakao.maps.LatLng(34.84704283758656, 126.95181380093044)
                },
                {
                    content :'<div>오류</div>',
                    latlng : new kakao.maps.LatLng(37.448688757683804,126.95421022840387)
                }

            ]

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
        <input type="button" value="일정만들기" style="width: 100%;  height: 60px;" class="btn-warning">
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

            })
        })
        $('.day').each(function (index,item) {
            $(item).click(function () {
                $(item).css('background-color','#aaa');

            })
        })
        $('.day').each(function (index) {
            $(this).click(function (index) {
                $(this).toggleClass('btn-success');
            })
        })



    })
    /* css('background-color','#aaa') */
</script>

    <div id="result" style="width: 1200px">

    </div>
    </form>

    <script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>