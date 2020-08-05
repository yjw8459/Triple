function chkTxtFld(txtFld) {
	var id = document.getElementById(txtFld);

	if(id.value == "") {
		alert('필수 항목이 비어있습니다.');
		id.focus();
		return false;
	}
	return true;
}
function chkPw(pwParam, pwOkParam) { // 비밀번호 확인 메소드
	let pw = document.getElementById(pwParam);
	let pwOk = document.getElementById(pwOkParam);

	if(pw.value != pwOk.value) {
		alert('비밀번호가 일치하지 않습니다.');
		pw.value = "";
		pwOk.value = "";
		pw.focus();
		return false;
	}
	return true;
}
function agree(chkbox) { // 체크박스 체크여부 메소드
	var checkbox = document.getElementById(chkbox);
	var chk = false;

	if(checkbox.checked) chk = true;
	else chk = false;

	if(!chk) alert('약관에 동의해주세요.');
}

function sendAccount() {
	let txtFldArr = ['jusrName', 'jusrBirth', 'jusrId', 'jusrPw', 'jusrPwOk', 'jusrEmail', 'agree'];

	for(let idx in txtFldArr) {
		if(!chkTxtFld(txtFldArr[idx], "필수 항목이 비어있습니다.")) return;
	}

	if(!chkPw(txtFldArr[3], txtFldArr[4])) return;
	/* if(agree(pwFldArr[2])) return; */

	$('.jfrm').submit();
}
function mailPatternCheck(emailId) {
	var reg = /^[a-z][a-z0-9_-]{3,20}@([a-z\d\.-]+)\.([a-z\.]{2,6})$/;
	var email = document.getElementById(emailId);

	if(!reg.test(email.value)) {
		alert('이메일 형식이 잘못되었습니다');
		return false;
	}
	return true;
}
function sendEmail() {
	if(!mailPatternCheck("usrEmail")) return;

	$('.idfrm').submit();
}
function LoginProc() {
	document.getElementById('frm').submit();
}
function FindProc() {
	let txtFldArr = ['usrName', 'usrBirth', 'auth'];

	for(let idx in txtFldArr) {
		if(!chkTxtFld(txtFldArr[idx], "필수 항목이 비어있습니다.")) return;
	}
}