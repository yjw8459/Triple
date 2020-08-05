<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	request.setCharacterEncoding("utf-8");
	String usrName = request.getParameter("usrName");
	if(usrName == null) usrName = "";
	String usrBirth = request.getParameter("usrBirth");
	if(usrBirth == null) usrBirth = "";
	String usrEmail = request.getParameter("usrEmail");
	if(usrEmail == null) usrEmail = "";
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Form.css">
<style>
#auth {
	display: inline;
	width: 50%;
}
</style>
<script src="<%=request.getContextPath() %>/js/AccountCommon.js"></script>
</head>
<center>
<section class="container">
	<article class="half">
	<h1>아이디/비밀번호를 잊으버리셨나요?</h1>
	<h4>찾을 방법을 아래에서 선택해주세요.</h4>
		<div class="tabs">
			<span class="tab signin active"><a href="#findid">아이디 찾기</a></span>
			<span class="tab signup"><a href="#findid">비밀번호 찾기</a></span>
		</div>
		<div class="content">
			<div class="signin-cont cont">
				<h1>이메일 본인인증으로 찾기</h1>
				<form id="frm" class="idfrm" action="<%=request.getContextPath() %>/Account/authProc.jsp" method="post">
					<input type="hidden" name="curPage" value="AccountFind">
					<input type="text" name="usrName" id="usrName" class="inpt" required="required" placeholder="이름을 입력하세요" value="<%=usrName%>">
					<input type="text" name="usrBirth" id="usrBirth" class="inpt" required="required" placeholder="생년월일을 입력하세요" value="<%=usrBirth%>">
					<input type="email" name="usrEmail" id="usrEmail" class="inpt" required="required" placeholder="이메일을 입력하세요" value="<%=usrEmail%>">
					<input type="submit" onclick="sendEmail();" name="requestauth" value="인증번호 요청"/>
				</form>
				<form id="frm" class="nextfrm" action="<%=request.getContextPath() %>/Account/FindidProc.jsp" method="post">
					<div class="submit-wrap">
						<input type="hidden" name="curPage" value="AccountFindOk">
						<input type="text" name="authNum" id="authNum" class="inpt" required="required" placeholder="인증번호">
						<input type="submit" onclick="FindProc();" name="nextBtn" class="submit" value="찾기"/>
					</div>
				</form>
			</div>
			<div class="signup-cont cont">
				<h1>이메일 본인인증으로 찾기</h1>
				<form id="frm" action="<%=request.getContextPath() %>/Account/authProc.jsp" method="post">
					<input type="hidden" name="curPage" value="Form">
					<input type="text" name="pusrName" id="usrName" class="inpt" required="required" placeholder="이름을 입력하세요.">
					<input type="text" name="pusrId" id="usrId" class="inpt" required="required" placeholder="아이디를 입력하세요.">
					<input type="text" name="pusrBirth" id="usrBirth" class="inpt" required="required" placeholder="생년월일을 입력하세요. 예),19900101">
			        <input type="email" name="pusrEmail" id="usrEmail" class="inpt" required="required" placeholder="이메일을 입력하세요.">
			        <input type="submit" name="requestauth" id="auth" value="인증번호 요청"/>
		        </form>
		        <form id="frm" action="<%=request.getContextPath()%>/Account/FindpwProc.jsp" method="post">
					<div class="submit-wrap">
						<input type="hidden" name="curPage" value="AccountFindOk">
				        <input type="text" name="auth" class="inpt" required="required" placeholder="인증번호">
						<input type="submit" onclick="sendAccount();" value="찾기" class="submit">
					</div>
        		</form>
			</div>
		</div>
	</article>
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
</center>