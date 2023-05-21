<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
nav {
	margin: 30px 10px;
}

main {
	position: relative;
}

.main_wrap {
	text-align: right;
	width: 650px; position : absolute;
	top: 20%;
	position: absolute; top : 20%;
	left: 50%;
}

.main_wrap>img, .main_wrap>div {
	display: inline-block;
}

.main_car_img {
	min-width: auto;
	height: 600px;
	display: inline-block;
}

.review_wrap, .qna_wrap {
	margin: 30px;
	padding: 20px;
	background-color: #eee;
}

.review_title, .qna_title {
	font-size: 2rem;
	font-weight: bold;
	margin: 10px;
}

.review_list_wrap {
	margin: 20px;
}

.review_list_wrap>div {
	display: inline-block;
	width: 200px;
	height: 250px;
	border: 2px solid;
	margin: 10px;
}

.qna_list_wrap div a {
	text-decoration: none;
	border-bottom: 1px solid;
	color: black;
	font-weight: bold;
}
.qna_list_wrap div{
	margin: 20px;
	margin-left: 50px;
}

</style>
</head>
<body>
	<nav>
		<jsp:include page="inc/top.jsp"></jsp:include>
	</nav>

	<main>
		<img class="main_car_img" alt="car_image" src="img/car_image.jpg">
		<div class="main_wrap">
			<div class="cal_wrap">
				<jsp:include page="inc/calender.jsp"></jsp:include>
			</div>
			<div class="rentMenu_wrap">
				<jsp:include page="inc/rentMenu.jsp"></jsp:include>
			</div>
		</div>
	</main>

	<article class="review_wrap">
		<div class="review_title">고객리뷰</div>
		<div class="review_list_wrap">
			<div></div>
			<div></div>
			<div></div>
		</div>
	</article>

	<article class="qna_wrap">
		<div class="qna_title">자주 묻는 질문
		<input type="button" value="더보기">
		</div>
		<div class="qna_list_wrap">
			<div>
				<a href="#">Q. 카시트 등 부가서비스는 어떻게 이용하나요?</a>
				<input type="button" value="▶">
			</div>
			<div>
				<a href="#">Q. 해외에 거주하고 있는데 예약 및 이용이 가능하나요?</a>
				<input type="button" value="▶">
			</div>
			<div>
				<a href="#">Q. 사고 또는 고장 발생시 어떻게 해야하나요?</a>
				<input type="button" value="▶">
			</div>
		</div>
	</article>
	
	<footer>
		<jsp:include page="inc/footer.jsp"></jsp:include>		
	</footer>

</body>
</html>