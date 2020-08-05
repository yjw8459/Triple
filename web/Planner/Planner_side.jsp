<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/15
  Time: 11:33 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script
        src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous">
</script>
<script>

</script>

<body>
<div id="container">x
    <div class="f1 left_full_box">
        <div class="f1" id="schedule_full_box">
            <div id="city_list_box">
                <a href="Map_sel.jsp?local=서울">
                <div class="item" id="seoul">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">서울</div>
                        <div class="info_sub_title">Seoul</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=부산">
                <div class="item" id="busan">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">부산</div>
                        <div class="info_sub_title">Busan</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a><a href="Map_sel.jsp?local=제주">
                <div class="item" id="jeju">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">제주도</div>
                        <div class="info_sub_title">Jeju</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=인천">
                <div class="item" id="incheon">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">인천</div>
                        <div class="info_sub_title">Inchone</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=대전">
                <div class="item" id="daejeon">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">대전</div>
                        <div class="info_sub_title">Daejeon</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=대구">
                <div class="item" id="daegu">
                    <div class="img_box f1"><img src="img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">대구</div>
                        <div class="info_sub_title">Daegu</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=광주">
                <div class="item" id="gwangju">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">광주</div>
                        <div class="info_sub_title">Gwangju</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=울산">
                <div class="item" id="ulsan">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">울산</div>
                        <div class="info_sub_title">Ulsan</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=세종">
                <div class="item" id="sejong">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">세종특별자치시</div>
                        <div class="info_sub_title">Sejong</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=경기">
                <div class="item" id="gyunggi">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">경기도</div>
                        <div class="info_sub_title">Gyeonggi-do</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=강원">
                <div class="item" id="kangwon">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">강원도</div>
                        <div class="info_sub_title">Gangwon-do</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=충북">
                <div class="item" id="chungbuk">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">충청북도</div>
                        <div class="info_sub_title">Chungcheongbuk-do</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=충남">
                <div class="item" id="chungnam">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">충청남도</div>
                        <div class="info_sub_title">Chungcheongnam-do</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=경북">
                <div class="item" id="gyungbuk">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">경상북도</div>
                        <div class="info_sub_title">Gyeongsangbuk-do</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=경남">
                <div class="item" id="gyungnam">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">경상남도</div>
                        <div class="info_sub_title">Gyeongsannam-do</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=전북">
                <div class="item" id="junbuk">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">전라북도</div>
                        <div class="info_sub_title">Jeollabuk-do</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
                <a href="Map_sel.jsp?local=전남">
                <div class="item" id="junnam">
                    <div class="img_box f1"><img src="../img/mypage.png"></div>
                    <div class="info_box f1">
                        <div class="info_title">전라남도</div>
                        <div class="info_sub_title">Jeollanam-do</div>
                    </div>
                    <div class="spot_to_inspot"><img src="../img/spot_to_inspot.png"/></div>
                    <div class="clear"></div>
                </div></a>
            </div>
        </div>
    </div>
    <div class="right_full_box" class="f1">
        <div id="map" class="f1"></div>
    </div>
</div>
<%--<div>--%>
<%--    <input id="createPlan" type="button" value="일정만들기"/>--%>
<%--</div>--%>
