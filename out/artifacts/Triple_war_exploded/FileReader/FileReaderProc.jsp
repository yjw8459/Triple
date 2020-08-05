<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/09
  Time: 5:12 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
request.setCharacterEncoding("UTF-8");
String filepath = request.getParameter("filePath");
FileReader fileReader = new FileReader();

List<String> lst = fileReader.getFileContent(filepath);
List<Customers> customersLst = fileReader.getCustomersList(lst);


Class.forName("oracle.jdbc.driver.OracleDriver");

Connection conn = null;
String msg = null;
String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:xe";
String dbUsr = "c##jin";
String dbPass = "jin1234";

String sql = "insert into CUSTOMERS(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)"+
"values(?, ?, ?, ?, ?, ?, ?)";

PreparedStatement pstmt = null;
try{
conn = DriverManager.getConnection(jdbcDriver, dbUsr, dbPass);

for(Customers customer : customersLst){

pstmt = conn.prepareStatement(sql);
pstmt.setInt(1, customer.getCustomerId());
pstmt.setString(2, customer.getContactName());
pstmt.setString(3, customer.getContactName());
pstmt.setString(4, customer.getAddress());
pstmt.setString(5, customer.getCity());
pstmt.setString(6, customer.getPostalCode());
pstmt.setString(7, customer.getCountry());
pstmt.execute();
out.print("성공<br/>");
conn.close();
msg = "접속 종료";
}
}catch(Exception e){
e.printStackTrace();
msg = "실패";
}
out.print(msg);
      %>