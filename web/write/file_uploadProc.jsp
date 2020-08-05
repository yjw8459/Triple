 <%@page import="org.apache.catalina.util.URLEncoder"%>
<%@page import="Care.Lab.TravelData"%>
<%@page import="java.sql.*"%>
 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="traveldata" class="Care.Lab.TravelData"/>
<jsp:setProperty property="*" name="traveldata"/>

<%@ include file="../common/dbConn.jspf" %>
<%!


	public boolean Insert(Connection conn, TravelData traveldata){
	
		
	
		PreparedStatement pstmt = null;
		// statement 는 정해진 값을 넣을때 씀 value(ji,1,2,3) 
		boolean result = true;
		String sql = "INSERT INTO TravelData " +
					"(no, title, contents, travelcourse, tema, local, travelX, travelY) " +
					"VALUES (TravelData_SEQ.nextval,?,?,?,?,?,?,?) ";
		
		try{
			
			pstmt = conn.prepareStatement(sql);
			
			String str1 =traveldata.getContents().replace("\r\n","<br>") ; 
			String str2 =traveldata.getTravelcourse().replace("\r\n","<br>") ; 	
			
			
			
			pstmt.setString(1, traveldata.getTitle());
			pstmt.setString(2, str1);
			pstmt.setString(3, str2);
			pstmt.setString(4, traveldata.getTema());
			pstmt.setString(5, traveldata.getLocal());
			pstmt.setString(6, traveldata.getTravelx());
			pstmt.setString(7, traveldata.getTravely());
			
			System.out.println(traveldata.getTravelx());
			System.out.println(traveldata.getTravely());
			/* pstmt.setString(1, travel.getTitle());
			pstmt.setString(2, travel.getContents()); */
			
			pstmt.execute();
			
		}catch(Exception e){
			e.printStackTrace();
			result = false;
		}finally{
			if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
			if(conn != null)	try{conn.close();}catch(Exception e){}
		}
		return result;
	}

%>
<%
	
	
	
	Connection conn = getConn();
	
	Insert(conn, traveldata);
	
	
	
%>




