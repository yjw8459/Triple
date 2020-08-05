<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/16
  Time: 10:41 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="Map_DBControl.jsp"%>
<%

    int index =Integer.parseInt( request.getParameter("index"));
    List<List<String>> planLst = getPlan();
    List<String> localLst = planLst.get(0);
    List<String> titleLst = planLst.get(1);
    List<String> xLst = planLst.get(2);
    List<String> yLst = planLst.get(3);
    List<String> noLst = planLst.get(4);
    System.out.println(localLst.size());


    String str = "";

        str+= "{ content:'<div>"+titleLst.get(index)+"</div>',"+
                "latlng:new kakao.map.LatLng("+xLst.get(index)+","+yLst.get(index)+")},";

out.print(str);




%>

}
%>

