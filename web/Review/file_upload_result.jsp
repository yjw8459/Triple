<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/13
  Time: 4:34 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%

    String path = "C:/Users/user/Desktop/eclipse/SemiProject/WebContent/upload";
    int maxSize = 1024*1024*100;
    String encoding = "UTF-8";
    MultipartRequest req = new MultipartRequest(request,path,maxSize,encoding, new DefaultFileRenamePolicy());




%>
파일이 전송이 성공적으로 종료되었습니다.