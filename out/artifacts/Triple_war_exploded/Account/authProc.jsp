<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="mail" class="com.jin.mail.JinsMail"/>
<jsp:setProperty property="id" name="mail" value="rladbsgh52@gmail.com"/>
<jsp:setProperty property="pw" name="mail" value="!d0109566"/>
<jsp:useBean id="members" class="User.Members"/>
<jsp:setProperty property="*" name="members"/>

<%
	request.setCharacterEncoding("utf-8");
	String authNum = String.format("%04d", (int)(Math.random()*10000));

	mail.SendMail("administrator", "rladbsgh52@gmail.com", members.getUsrEmail(), "인증번호", authNum);
	
	
	session.setAttribute("authNum", authNum);
	session.setAttribute("Name", members.getUsrName());
	session.setAttribute("Birth", members.getUsrBirth());
	session.setAttribute("Email", members.getUsrEmail());

%>
<jsp:forward page="/index.jsp">
	<jsp:param value="AccountFind" name="frmPage"/>
</jsp:forward>