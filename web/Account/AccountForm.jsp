<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	request.setCharacterEncoding("utf-8");
	String errorLog = request.getParameter("errorLog");
	errorLog = (errorLog == null)?"":URLDecoder.decode(errorLog,"utf-8");
%>
<!doctype html>
	<head>
	<meta charset="UTF-8">
	<title>Account</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Form.css">
	<script src="<%=request.getContextPath() %>/js/AccountCommon.js"></script>
</head>
<body>
<section class="container">
	<article class="half">
	<h1>TRIPLE</h1>
	<div class="tabs">
		<span class="tab signin active"><a href="#signin">로그인</a></span>
		<span class="tab signup"><a href="#signup">회원가입</a></span>
	</div>
	<div class="content">
		<div class="signin-cont cont">
			<form id="frm" action="<%=request.getContextPath() %>/Account/LoginProc.jsp" method="post">
				<input type="hidden" name="curPage" value="AccountForm">
				<input type="text" name="usrId" id="usrId" class="inpt" required="required" placeholder="아이디를 입력하세요.">
				<input type="password" name="usrPw" id="usrPw" class="inpt" required="required" placeholder="비밀번호를 입력하세요.">
				<input type="checkbox" id="remember" class="checkbox" checked>
				<div class="submit-wrap">
					<input type="button" onclick="LoginProc();" value="로그인" class="submit">
					<a href="<%=request.getContextPath() %>/index.jsp?frmPage=AccountFind" class="more">아이디/비밀번호를 잊으셨나요?</a>
					<%=errorLog %>
				</div>
        	</form>
		</div>
		<div class="signup-cont cont">
			<form id="frm" class="jfrm" action="<%=request.getContextPath() %>/Account/JoinProc.jsp" method="post">
				<input type="hidden" name="curPage" value="AccountForm">
				<input type="text" name="usrName" id="jusrName" class="inpt" required="required" placeholder="이름을 입력하세요.">
				<input type="text" name="usrBirth" id="jusrBirth" class="inpt" required="required" placeholder="생년월일을 입력하세요. 예),19900101">
				<input type="text" name="usrId" id="jusrId" class="inpt" required="required" placeholder="아이디를 입력하세요.">
				<input type="password" name="usrPw" id="jusrPw" class="inpt" required="required" placeholder="비밀번호를 입력하세요.">
				<input type="password" name="usrPwOk" id="jusrPwOk" class="inpt" required="required" placeholder="비밀번호를 입력하세요.">
				<font id="chkPw" size="2"></font>
		        <input type="email" name="usrEmail" id="jusrEmail" class="inpt" required="required" placeholder="이메일을 입력하세요.">
				<div class="submit-wrap">
					<input type="checkbox" name="agree" id="agree" class="more">개인정보 수집동의
					<input type="button" onclick="sendAccount();" value="회원가입" class="submit">
				</div>
        	</form>
    	</div>
	</div>
	</article>
	<!-- <div class="half bg"></div> -->
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">
$('.tabs .tab').click(function(){
    if ($(this).hasClass('signin')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signin-cont').show();
    } 
    if ($(this).hasClass('signup')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signup-cont').show();
    }
});
$('.container .bg').mousemove(function(e){
    var amountMovedX = (e.pageX * -1 / 30);
    var amountMovedY = (e.pageY * -1 / 9);
    $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
});
</script>
<script>
$(function() {
	$('#jusrPw').keyup(function() {
		$('#chkPw').html('');
	});
	$('#jusrPwOk').keyup(function() {
		if($('#jusrPw').val() != $('#jusrPwOk').val()) {
			$('#chkPw').html('비밀번호 일치하지 않음');
			$('#chkPw').attr('color', '#f82a2aa3');
		} else {
			$('#chkPw').html('비밀번호 일치함');
			$('#chkPw').attr('color', '#199894b3');
		}
	});
});
</script>
</body>