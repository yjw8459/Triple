<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/dbConn.jspf" %>
<jsp:useBean id="members" class="User.Members"/>
<jsp:setProperty property="*" name="members"/>
<%!
public int getLogin(Connection conn, String id, String pw) {
	String sql = "SELECT count(*) FROM Members WHERE usrId=? AND usrPw=?";
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) return rs.getInt(1);
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		if(rs != null) try{rs.close();}catch(Exception e){}
		if(pstmt != null) try{pstmt.close();}catch(Exception e){}
		if(conn != null) try{conn.close();}catch(Exception e){}
	}
	
	return 0;
}
%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("usrId");
	String pw = request.getParameter("usrPw");
	
	String pagePath = "AccountForm";
	String errorLog = "일치하는 정보가 없습니다";
	
	Connection conn = getConn();
	if(getLogin(conn, id, pw) == 1) {
		pagePath = "home";
		session.setAttribute("usrId", id);
	}
%>
<jsp:forward page="/index.jsp">
	<jsp:param value="<%=pagePath %>" name="frmPage"/>
	<jsp:param value='<%=URLEncoder.encode(errorLog, "utf-8")  %>' name="errorLog"/>
</jsp:forward>