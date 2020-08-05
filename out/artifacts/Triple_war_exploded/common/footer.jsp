<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
#footer {
	width: 100%;
	height: 242px;
	background:#363C48;
	position: relative;
	font-size: 20px;
}
#footer a {
	display: block;
	color: #fff;
	font-size: 11px;
	margin-bottom: 10px;
}
.wrap {
	width: 1092px;
	margin: 0;
	position: relative;
}
.f1 {
	float: left;
}
.footer_col {
	width: 261px;
	margin-right: 16px;
}
.footer_title {
	width: 261px;
	height: 19px;
	border-bottom: solid 1px #424753;
	margin-top: 30px;
	color: #999999;
	font-size: 13px;
	margin-bottom: 12px;
	font-weight: bold;
}
</style>

<div id="footer">
	<div class="wrap">
		<div class="footer_col f1">
			<div class="footer_title">스토리</div>
			<ul>
				<li><a href="<%=request.getContextPath()%>/Travel/LocalTitle.jsp">여행지</a></li>

				<li><a href="#">일정만들기</a></li>
				<li><a href="<%=request.getContextPath()%>/Travel/RecommendTitle.jsp">추천</a></li>

				<li><a href="http://www.agoda.com/ko-kr/?site_id=1829971&tag=21d05959-0f0e-5fbd-037c-36e35099ddf1&device=c&network=g&adid=401952669526&rand=1391065370294006613&expid=&adpos=&gclid=CjwKCAjwjLD4BRAiEiwAg5NBFp9aZSbBvPmgIVgwXgzpueExHaoxJIw9eW8g19mPa80Y1EyBvuNMZBoCIocQAvD_BwE"
				   id="hotel"
				   onclick="window.open(this.href,'_blank','width=800px,height=1200px,toolbar=no,scrollbars=no');return false;">숙박</a></li>
			<li><a href="#">여행TIP</a></li>
			</ul>
		</div>
		<div class="footer_col f1">
			<div class="footer_title">회사이야기</div>
			<ul>
			<li><a href="<%=request.getContextPath()%>/index.jsp?frmPage=cor">회사소개</a></li>
			<li><a href="#">이용방법</a></li>
			</ul>
		</div>
		<div class="footer_col f1">
			<div class="footer_title">고객센터</div>
			<ul>
			<li><a href="<%=request.getContextPath()%>/Board/CustomerBoard.jsp">문의하기</a></li>
			<li><a href="<%=request.getContextPath()%>/Review/review.jsp">이용후기</a></li>
			</ul>
		</div>
	</div>
</div>