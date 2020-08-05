<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

String path = "C:/Users/user/Desktop/eclipse/SemiProject/WebContent/upload";
int maxSize = 1024*1024*100;
String encoding = "UTF-8";
MultipartRequest req = new MultipartRequest(request,path,maxSize,encoding, new DefaultFileRenamePolicy());



%>
파일이 전송이 성공적으로 종료되었습니다.