<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/06
  Time: 10:32 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="dbConn.jspf"%>
<%!
   public List<List<String>> getNews() {

       String sql = "select * from News ";
       Connection conn = null;
       ResultSet rs = null;
       Statement ps = null;
       List<List<String>> newsLst = new ArrayList<>();
       //게시물 번호
       List<String> noLst = new ArrayList<>();

       //글 제목
       List<String> titleLst = new ArrayList<String>();

       //게시물 내용
       List<String> contentsLst = new ArrayList<String>();

       //태그
       List<String> tagLst = new ArrayList<String>();

       //축제 날짜
       List<String> dateLst = new ArrayList<String>();

       //연락처
       List<String> numLst = new ArrayList<String>();

       //홈페이지 주소
       List<String> urlLst = new ArrayList<String>();

       //주소
       List<String> addLst = new ArrayList<String>();

       //축제 시즌
       List<String> seasonLst = new ArrayList<>();

       try {
           conn = getConn();

           ps = conn.createStatement();

           rs = ps.executeQuery(sql);

           while (rs.next()) {
               //db는 1부터 시작
                noLst.add(rs.getString(1));
               titleLst.add(rs.getString(2));
               contentsLst.add(rs.getString(3));
               tagLst.add(rs.getString(4));
               dateLst.add(rs.getString(5));
               numLst.add(rs.getString(6));
               urlLst.add(rs.getString(7));
               addLst.add(rs.getString(8));
               seasonLst.add(rs.getString(9));
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
       newsLst.add(noLst);
       newsLst.add(titleLst);
       newsLst.add(contentsLst);
       newsLst.add(tagLst);
       newsLst.add(dateLst);
       newsLst.add(numLst);
       newsLst.add(urlLst);
       newsLst.add(addLst);
       newsLst.add(seasonLst);


       return newsLst;
   }

    public List<List<String>> hot(){
       //조회수가 가장 높은 게시물 3개를 반환 SQL= RANK값 사용
//       static으로 선언하면 getConn이 선언되지 않음

        String sql = "select no,title,writedate,tag from news order by hits DESC";
//        news 테이블의 모든 값을 찾는다 resultSet으로 네개만 반환
        Connection con = null;
        Statement st = null;
        ResultSet rs=null;
        List<String> noLst = new ArrayList<>();
        List<String> titleLst = new ArrayList<>();
        List<String> dateLst = new ArrayList<>();
        List<String> tagLst = new ArrayList<>();
        List<List<String>> hotLst = new ArrayList<>();
        try {
            con = getConn();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            //sql문을 처리하고 저장
            while (rs.next()){
                noLst.add(rs.getString(1));
                titleLst.add(rs.getString(2));
                dateLst.add(rs.getString(3));
                tagLst.add(rs.getString(4));
            }
            hotLst.add(noLst);
            hotLst.add(titleLst);
            hotLst.add(dateLst);
            hotLst.add(tagLst);

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (rs!=null)try{rs.close();}catch (Exception e){}
            if (st!=null)try{st.close();}catch (Exception e){}
            if (con!=null)try{con.close();}catch (Exception e){}
        }

        return hotLst;

    }
    public List<List<String>> find(String key){
       //검색어를 받아서 맞는 튜플을 찾은 후 반환
       String sql = "select title, writedate, tag from news where title like ?";
       Connection con = null;
       PreparedStatement pstmt = null;
       ResultSet rs = null;
       String findStr = "%"+key+"%";
       List<List<String>> findLst = new ArrayList<>();
        List<String> titleLst = new ArrayList<>();
        List<String> dateLst = new ArrayList<>();
        List<String> tagLst = new ArrayList<>();

       try{
           con = getConn();
           pstmt = con.prepareStatement(sql);
           pstmt.setString(1,findStr);
           rs=pstmt.executeQuery();

           while (rs.next()){
               titleLst.add(rs.getString(1));
               dateLst.add(rs.getString(2));
               tagLst.add(rs.getString(3));
           }

       }catch (Exception e){
           e.printStackTrace();
       }finally {
           if (rs!=null)try{rs.close();}catch (Exception e){}
           if (pstmt!=null)try{pstmt.close();}catch (Exception e){}
           if (con!=null)try{con.close();}catch (Exception e){}
       }
       findLst.add(titleLst);
        findLst.add(dateLst);
        findLst.add(tagLst);

        return findLst;
    }
%>


