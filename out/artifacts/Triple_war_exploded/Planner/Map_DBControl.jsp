<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/15
  Time: 9:03 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../NewsLetter/dbConn.jspf"%>
<%!
    public List<List<String>> getPlan() {

        String sql = "select * from Planner";
        Connection conn = null;
        ResultSet rs = null;
        Statement ps = null;
        List<List<String>> planLst = new ArrayList<>();
        List<String> localLst = new ArrayList<>();
        List<String> titleLst = new ArrayList<>();
        List<String> xLst = new ArrayList<>();
        List<String> yLst = new ArrayList<>();
        List<String> noLst = new ArrayList<>();



        try {
            conn = getConn();

            ps = conn.createStatement();

            rs = ps.executeQuery(sql);

            while (rs.next()) {
                //db는 1부터 시작
                localLst.add(rs.getString(1));
                titleLst.add(rs.getString(2));
                xLst.add(rs.getString(3));
                yLst.add(rs.getString(4));
                noLst.add(rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) {
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (Exception e) {
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (Exception e) {
                }


            }

        }
        planLst.add(localLst);
        planLst.add(titleLst);
        planLst.add(xLst);
        planLst.add(yLst);
        planLst.add(noLst);
        return planLst;
    }
    public List<List<String>> getLocal(String local) {

        String sql = "select * from Planner where local = ? ";
        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement pstmt = null;
        List<List<String>> planLst = new ArrayList<>();
        List<String> localLst = new ArrayList<>();
        List<String> titleLst = new ArrayList<>();
        List<String> xLst = new ArrayList<>();
        List<String> yLst = new ArrayList<>();
        List<String> noLst = new ArrayList<>();



        try {
            conn = getConn();

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,local);

            rs = pstmt.executeQuery();

            while (rs.next()) {
                //db는 1부터 시작
                localLst.add(rs.getString(1));
                System.out.println(rs.getString(1));
                titleLst.add(rs.getString(2));
                xLst.add(rs.getString(3));
                yLst.add(rs.getString(4));
                noLst.add(rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) {
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (Exception e) {
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (Exception e) {
                }


            }

        }
        planLst.add(localLst);
        planLst.add(titleLst);
        planLst.add(xLst);
        planLst.add(yLst);
        planLst.add(noLst);
        return planLst;
    }
%>

