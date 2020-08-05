<%@page import="java.sql.PreparedStatement"%>
<%@page import="User.Members"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="members" class="User.Members"/>
<jsp:setProperty property="*" name="members"/>
<%@include file="/common/dbConn.jspf" %>

<%!
public boolean Insert(Connection conn, Members members) {
	boolean result = true;
	PreparedStatement pstmt = null;
	
	String sql = "INSERT INTO Members(usrId, usrPw, usrEmail, usrName, usrBirth) " +
				"VALUES(?, ?, ?, ?, ?) ";
	
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, members.getUsrId());
		pstmt.setString(2, members.getUsrPw());
		pstmt.setString(3, members.getUsrEmail());
		pstmt.setString(4, members.getUsrName());
		pstmt.setString(5, members.getUsrBirth());
		
		pstmt.execute();
	}catch(Exception e) {
		e.printStackTrace();
		result = false;
	} finally {
		if(pstmt != null) try{pstmt.close();}catch(Exception e){}
		if(conn != null) try{conn.close();}catch(Exception e){}
	}
	
	return result;
}
%>
<%
	request.setCharacterEncoding("utf-8");
	String pagePath = "AccountForm";
	Connection conn = getConn();
	if(Insert(conn, members)) pagePath = "home";
	else pagePath = "home";
%>
<jsp:forward page="/index.jsp">
	<jsp:param value="<%=pagePath %>" name="frmPage"/>
</jsp:forward>