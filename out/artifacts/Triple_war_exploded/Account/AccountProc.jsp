<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="oracle.jdbc.proxy.annotation.Pre"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/dbConn.jspf"%>
<%!

    public List<List<String>> getMembers(){
        String sql = "select * from members";
        List<List<String>> MemberLst = new ArrayList<>();
        List<String> nameLst = new ArrayList<>();
        List<String> birthLst = new ArrayList<>();
        List<String> idLst = new ArrayList<>();
        List<String> pwLst = new ArrayList<>();
        List<String> mailLst = new ArrayList<>();
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;
        try{
            conn = getConn();
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                //db에서 가져온 값 리스트에 순차저장
                nameLst.add(rs.getString(1));
                birthLst.add(rs.getString(2));
                idLst.add(rs.getString(3));
                pwLst.add(rs.getString(4));
                mailLst.add(rs.getString(5));
            }
        }catch(Exception e){

            e.printStackTrace();
        }finally{
            if(rs!=null){
                try{
                    rs.close();
                }catch(Exception e){}
            }
            if(st!=null){
                try{
                    st.close();
                }catch(Exception e){}
            }
            if(conn!=null){
                try{
                    conn.close();
                }catch(Exception e){}
            }
        }
        MemberLst.add(nameLst);
        MemberLst.add(birthLst);
        MemberLst.add(idLst);
        MemberLst.add(pwLst);
        MemberLst.add(mailLst);
        return MemberLst;
    }



    public List<String> getInfor(String id){
        String sql = "select * from members where usrid = ? ";
        //id에 해당된 정보만 가져옴
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<String> infoLst = new ArrayList<>();

        try{
            conn = getConn();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            while(rs.next()){
                //db에서 가져온 값 리스트에 순차저장
                infoLst.add(rs.getString(1));
                infoLst.add(rs.getString(2));
                infoLst.add(rs.getString(3));
                infoLst.add(rs.getString(4));
                infoLst.add(rs.getString(5));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return infoLst;
    }
%>