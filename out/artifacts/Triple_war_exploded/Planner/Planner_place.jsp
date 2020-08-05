<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/16
  Time: 4:42 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="Map_DBControl.jsp"%>
<%
    String local = request.getParameter("local");
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
<html>
<script>

</script>
<body>
<div id="place">
    <hr/>

    <div><input type="button" id="plan_make" value="일정만들기"></div>

</div>

</body>
</html>
