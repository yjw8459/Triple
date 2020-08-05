<%@page import="java.util.*"%>
<%@page import="Care.Lab.*"%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/dbConn.jspf"%>


<%!public List<List<String>> getTravelSelect(String sqlNum) {
	Statement stmt = null;
	ResultSet rs = null;

	Connection conn = null;

	String sql = "";

	switch (sqlNum) {

	case "0":
		sql = "SELECT *  " + "FROM TRAVELDATA ";
		break;

	case "1":
		sql = "SELECT * " + "FROM TRAVELDATA " + "WHERE TEMA = '1' ";
		break;

	case "2":
		sql = "SELECT * " + "FROM TRAVELDATA " + "WHERE TEMA = '2' ";
		break;
	case "3":
		sql = "SELECT * " + "FROM TRAVELDATA " + "WHERE TEMA = '3' ";
		break;
	case "4":
		sql = "SELECT * " + "FROM TRAVELDATA " + "WHERE TEMA = '4' ";
		break;
		
	case "5":	
		sql = "SELECT * " + "FROM TRAVELDATA " + "WHERE LOCAL = '#서울' ";
	break;
	
	case "6":	
		sql = "SELECT * " + "FROM TRAVELDATA " + "WHERE LOCAL = '#경기도' ";
	break;
	
	case "7":	
		sql = "SELECT * " + "FROM TRAVELDATA " + "WHERE LOCAL = '#강원도' ";
	break;
	
	case "8":	
		sql = "SELECT * " + "FROM TRAVELDATA " + "WHERE LOCAL = '#충청도' ";
	break;
	
	case "9":	
		sql = "SELECT * " + "FROM TRAVELDATA " + "WHERE LOCAL = '#전라도' ";
	break;
	
	case "10":	
		sql = "SELECT * " + "FROM TRAVELDATA " + "WHERE LOCAL = '#경상도' ";
	break;
	
	case "11":	
		sql = "SELECT * " + "FROM TRAVELDATA " + "WHERE LOCAL = '#부산' ";
	break;
	
	case "12":	
		sql = "SELECT * " + "FROM TRAVELDATA " + "WHERE LOCAL = '#제주도' ";
	break;	

	}

	/* "FROM TRAVELDATA ORDER BY TITLE ASC "; */

	List<List<String>> travel = new ArrayList<>();
	
	List<String> no = new ArrayList<>();
	List<String> title = new ArrayList<>();
	List<String> contents = new ArrayList<>();
	List<String> travelcourse = new ArrayList<>();
	List<String> tema = new ArrayList<>();
	List<String> local = new ArrayList<>();
	List<String> travelx = new ArrayList<>();
	List<String> travely = new ArrayList<>();

	try {
		conn = getConn();
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		while (rs.next()) {

			no.add(rs.getString(1));
			title.add(rs.getString(2));
			contents.add(rs.getString(3));
			travelcourse.add(rs.getString(4));
			tema.add(rs.getString(5));
			local.add(rs.getString(6));
			travelx.add(rs.getString(7));
			travely.add(rs.getString(8));

		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (rs != null)
			try {
				rs.close();
			} catch (Exception e) {
			}
		if (stmt != null)
			try {
				stmt.close();
			} catch (Exception e) {
			}
		if (conn != null)
			try {
				conn.close();
			} catch (Exception e) {
			}
	}
	travel.add(no);
	travel.add(title);
	travel.add(contents);
	travel.add(travelcourse);
	travel.add(tema);
	travel.add(local);
	travel.add(travelx);
	travel.add(travely);

	return travel;
}

public int getTotalPage(Connection conn, String conditional) {
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "SELECT count(*) FROM TravelData " + conditional;

	try {
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			return rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (rs != null)
			try {
				rs.close();
			} catch (Exception e) {
			}
		if (pstmt != null)
			try {
				pstmt.close();
			} catch (Exception e) {
			}
		if (conn != null)
			try {
				conn.close();
			} catch (Exception e) {
			}
	}

	return 0;
}

public String getConditional(String searchSelect, String search) {

	if (searchSelect == null)
		return "";

	if ("작성자".contentEquals(searchSelect))
		return "WHERE id like '%" + search + "%'";

	else if ("제목".contentEquals(searchSelect))
		return "WHERE title like '%" + search + "%'";
	else if ("전체".contentEquals(searchSelect))

		return "WHERE id like '%" + search + "%' OR title like '%" + search + "%'";

	return "";

}

public boolean Delete(Connection conn, List<String> lst) {
	PreparedStatement pstmt = null;

	String sql = "DELETE FROM TravelData WHERE no=? ";

	try {
		for (String no : lst) {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.execute();
		}
	} catch (Exception e) {
		e.printStackTrace();
		return false;
	} finally {
		if (pstmt != null)
			try {
				pstmt.close();
			} catch (Exception e) {
			}
		if (conn != null)
			try {
				conn.close();
			} catch (Exception e) {
			}
	}
	return true;
}%>
<%-- <%

	String searchSelect = request.getParameter("searchSelect");
	String search =  request.getParameter("search");
	String conditional = getConditional(searchSelect, search);
	
	
	String[] checkboxTitle = request.getParameterValues("checkBoxTitle");
	
	if(checkboxTitle!=null){
		List<String> lst = new ArrayList<>();
		for(int i=0;i<checkboxTitle.length;i++)
			lst.add(checkboxTitle[i]);	
		
		Delete(getConn("localhost", "1521", "xe"), lst);
	}
	
	
	int pageNum = Integer.parseInt(request.getParameter("pageNum"))-1;
	int blockSize = 2;
	
	Connection conn = getConn("localhost", "1521", "xe");
	List<Board> boardList = getTravelSelect(conn, pageNum * blockSize, (pageNum+1) * blockSize,conditional);
	
	session.setAttribute("boardList", boardList);
	request.setAttribute("totalPage", getTotalPage(getConn("localhost", "1521", "xe"),conditional));
	request.setAttribute("blockSize", blockSize);
	request.setAttribute("pageNum", pageNum+1);
%> --%>
