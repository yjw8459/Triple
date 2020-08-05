<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/dbConn.jspf" %>
<jsp:useBean id="members" class="User.Members"/>
<jsp:setProperty property="*" name="members"/>
<%!
public String getPW(Connection conn, String name, String id, String birth, String email) {
	String sql = "SELECT usrPw FROM Members WHERE usrName=? AND usrId=? AND usrBirth=? AND usrEmail=?";
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String pw = null;
	
	try {
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, id);
		pstmt.setString(3, birth);
		pstmt.setString(4, email);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			pw = rs.getString(1);
			return pw;
		}
	}catch(Exception e) {
		/* e.printStackTrace(); */
	}finally {
		if(rs != null) try{rs.close();}catch(Exception e){}
		if(pstmt != null) try{pstmt.close();}catch(Exception e){}
	}
	
	return pw;
}
%>
<%
	request.setCharacterEncoding("utf-8");

	String name = (String)session.getAttribute("pName");
	String id = (String)session.getAttribute("pId");
	String birth = (String)session.getAttribute("pBirth");
	String email = (String)session.getAttribute("pEmail");
	
	String authNum = request.getParameter("authNum");
	String authNumAttr = (String)session.getAttribute("authNum");
	
	String pagePath = "AccountFindOK";
	String msg = "";
	
	Connection conn = getConn();
	
	String pw = getPW(conn, name, id, birth, email);
	if(pw != null) msg = pw;
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