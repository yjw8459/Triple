<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#container {text-align: center;}
#container #search {border: 1px solid #aaa;}
#container #search input[type=text] {
	border-radius: 5px;
}
#usrImg {
	border:1px solid #777;
	border-radius: 50px;
	width: 100px;
	height: 100px;
}
table {
	width: 100%;
	height: 100px;
}
#questionBtn {padding-left: 90%;}
#usrImgtd {width: 10%; height:100px;}
#searchText {width: 90%;}
</style>
</head>
<center>
<div id="container">
	<div id="search">
		<h2>궁금한 점이 있으신가요?</h2>
		<input type="text" id="searchText" name="searchText" placeholder="검색"/>
	</div>
	<div>
	<br/>
		<table>
			<tr>
				<td colspan="2" id="questionBtn"><input type="button" value="질문하기"></td>
			</tr>
			<tr>
				<td id="usrImgtd"><div id="usrImg"></div></td>
				<td>
					<div>아이디</div>
					<pre></pre>
				</td>
			</tr>
		</table>
	</div>
</div>
</center>