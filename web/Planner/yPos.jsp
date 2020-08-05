<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/16
  Time: 10:42 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>


<%--for(var j = 0; j<170;j++){--%>
<%--    var obj = {--%>
<%--        content: "<div><%=titleLst.get(i)%></div>",--%>
<%--        latlng: new kakao.maps.LatLng(<%=xLst.get(i)%> , <%=yLst.get(i)%>)--%>
<%--    }--%>
<%--    <%i++; System.out.print(i);%>--%>
<%--    positions.push(obj);--%>
<%--    console.log(j);--%>


<%--    <%--%>
<%--    System.out.println(titleLst.get(i));--%>
<%--    System.out.println(xLst.get(i));--%>
<%--    System.out.println(yLst.get(i));--%>
<%--    %>--%>

<%--}--%>
<%--console.log(planSize);--%>
<%--alert(positions);--%>

var xhr = new XMLHttpRequest();
xhr.open('get','xPos.jsp');
xhr.onreadystatechange =function(){
if(xhr.status==200&&xhr.readyState==4){
var data = JSON.parse(xhr.responseText);
alert(data);
positions.push(data);
}
}
xhr.send();
