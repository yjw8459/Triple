<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/dbConn.jspf" %>
<jsp:useBean id="members" class="User.Members"/>
<jsp:setProperty property="*" name="members"/>
<%!
public String getID(Connection conn, String name, String birth, String email) {
	String sql = "SELECT usrId FROM Members WHERE usrName=? AND usrBirth=? AND usrEmail=?";
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String id = null;
	
	try {
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, birth);
		pstmt.setString(3, email);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			id = rs.getString(1);
			return id;
		}
	}catch(Exception e) {
		/* e.printStackTrace(); */
	}finally {
		if(rs != null) try{rs.close();}catch(Exception e){}
		if(pstmt != null) try{pstmt.close();}catch(Exception e){}
	}
	
	return id;
}
%>
<%
	request.setCharacterEncoding("utf-8");
	
	/* String name = request.getParameter("usrName");
	String birth = request.getParameter("usrBirth");
	String email = request.getParameter("usrEmail"); */
	
	String name = (String)session.getAttribute("Name");
	String birth = (String)session.getAttribute("Birth");
	String email = (String)session.getAttribute("Email");
	
	String authNum = request.getParameter("authNum");
	String authNumAttr = (String)session.getAttribute("authNum");
	
	String pagePath = "AccountFindOK";
	String msg = "";

	Connection conn = getConn();
	
	String id = getID(conn, name, birth, email);
	if(id != null) msg = id;
	else msg = "일치하는 정보가 없습니다.";
	
	if(authNum.contentEquals(authNumAttr)) {
		session.removeAttribute("authNum");
		
		pagePath = "AccountFindOK";
	}
	else {
		msg = "인증번호가 일치하지 않습니다.";
		pagePath = "AccountFind";
	}
	
%>
<jsp:forward page="/index.jsp">
	<jsp:param value="<%=pagePath %>" name="frmPage"/>
	<jsp:param value="<%=msg %>" name="msg"/>
</jsp:forward>