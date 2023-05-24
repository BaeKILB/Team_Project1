<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery-3.7.0.js"></script>

<link href="src/css/bootstrap.min.css" rel="stylesheet">
<script src="src/css/bootstrap.bundle.min.js"></script>
<link href="src/css/top.css" rel="styleSheet">

 
<style type="text/css">

/* 차량 예약 메뉴 관련 css */
.main_img_wrap {
	margin-top: 100px;
	margin-bottom: 50px;
	text-align: center;
	/* 차량예약 검색 매뉴를 이미지위에 올리기 위해 
		이미지 쪽에 position relative 을 사용 */
	position: relative;
}

.main_car_img {
	min-width: auto;
	height: 700px;
	display: inline-block;
}

.main_wrap {
	text-align: left;
	width: 605px;
	padding: 0;
	border-radius: 5px;
	/* 차량예약 검색 매뉴를 이미지위에 올리기 위해 position 을 사용 */
	position: absolute;
	top: 17%;
}

.main_wrap>div {
	display: inline-block;
	/*달력부분과 예약정보 선택부분 세로로 가운데 정렬하기*/
	vertical-align: middle;
}

/* 리뷰 컨텐츠 관련 css */
.review_wrap, .qna_wrap {
	margin: 30px;
	padding: 20px;
	background-color: #eee;
}

.review_title, .qna_title_wrap {
	font-size: 2rem;
	font-weight: bold;
}

.review_list_wrap {
	margin: 20px;
}

/* col 로 사용할 태그의 css 에는 margin 사용하면 
	부트스트랩 그리드가 제대로 적용이 안됨 */
.review_list_wrap>div {
	display: inline-block;
	width: 200px;
	height: 250px;
	border: 2px solid #ff7f02;
	border-radius: 20px;
	background-color: white;
	text-align: center;
	/* 	margin: 20px; */
}
.review-star{
	font-size: 2rem;
	font-weight: bold;
}
.review-car-name{
	font-size:1.7rem;
}

.review-content{
	margin-top: 3rem;
}

.review-content p {
	font-size:1.3rem;

}

.qna_title {
	font-size: 2rem;
	font-weight: bold;
}
.qna_title_btn, .review_list_btn{
	width: 70px;
}
.qna_list_wrap div {
	margin: 20px;
	margin-left: 50px;
}

.qna_list_wrap div a {
	display: inline-block;
	text-decoration: none;
	border-bottom: 1px solid ;
	color: black;
	font-weight: bold;
}

/* 부트스트랩 그리드 적용시 버튼이 너무 길어지는걸 방지하기위해
	길이 고정*/
.qna_btn {
	width: 3rem;
}

/*
	고객리뷰 , 자주묻는 질문등 container-fluid 쓰는곳 폭 길이제한
	(container-fluid 적용시 길이가 창 넓이를 초과함으로)
*/
.container-fluid {
	width: 95%;
}

/* 일정 넓이 이상 창크기시 길이 제한*/
@media ( min-width :1790px) {
	.container-fluid {
		width: 1929px;
	}
}

@media ( min-width :610px) {
	.main_wrap {
		background-color: #eee;
	}
}

/* 높이 낮아질 때 이미지 높이 같이 낮아짐 */
@media ( max-height :810px) {
	.main_car_img {
		height: 600px;
	}
}
</style>
</head>
<body>
	<nav>
		<jsp:include page="inc/top1.jsp"></jsp:include>
	</nav>
	<div class="main_img_wrap">
		<img class=" main_car_img" alt="car_image" src="img/car_image.jpg">
	</div>

	<!-- 부트스트랩 그리드를 사용하여 컨텐츠 위치 설정
	1. 맨 앞 태그 class 부분에
	container 또는 container-fluid 를 넣기 (container-fluid는 width 가 항상 100%)
	
	2. 다음 태그 class 부분에 row 를 넣어
	이 태그 안쪽부분을 행으로 쓸것이다 선언
	
	3. 다음 태그에  col-n(1~12) 를 넣어 차지할 공간을 설정함
	
	# offset-n(1~11) 를 넣어 일정 크기만큼 띄워줄수 있으며
	order-n 등등 다양한 그리드 관련 클래스를 사용할 수 있음
		 -->

	<!-- 컨테이너 자체를 가운데 정렬 하고싶으면 mx-auto 사용 !!  -->
	<main class="container-fluid px-0 mx-auto">
		<form action="#" method="post">
			<div class="row align-items-center">
				<div
					class="col-2 offset-md-3 offset-lg-5 offset-xl-6 offset-xxl-5 main_wrap">
					<div class="cal_wrap ">
						<jsp:include page="inc/calender.jsp"></jsp:include>
					</div>
					<div class=" rentMenu_wrap ">
						<jsp:include page="inc/rentMenu.jsp"></jsp:include>
					</div>
				</div>
			</div>
		</form>
	</main>



<!--  고객 리뷰 구역 !  -->
	<article class="container-fluid mx-auto review_wrap">
		<div class="row">
			<div class="col-3 review_title">고객리뷰</div>
			<input type="button" class="offset-8 col-1 btn btn-outline-dark review_list_btn" value="더보기">
		</div>
		<div class="row align-items-center review_list_wrap">
			<!--	리뷰 컨텐츠들을 가로 세로 전부 중앙에 오도록 설정하기
		
			d-flex : display:flex 와 동일한 동작 
				- 현 요소가 col 을 설정하고 있을시
				 css 에 display:flex를 넣어도 동작을 하지 않음
				 따라서 d-flex 로 지정하여 사용
				 flex box 의 설정값들도 css 가 아닌 부트스트랩을 사용해서 지정해야함 	
		align-items-center :  align-items:center 와 동일
		justify-content-center : justify-content:center 와 동일  -->
			<div
				class="col-2 offset-sm-1 offset-m-2 d-flex align-items-center justify-content-center ">
				<div class="review-wrap1">
					<span class="review-star">5.0</span> <span class="review-car-name">차량이름</span>
					<div class="review-content"><p>리뷰내용 21313</p></div>
				</div>
			</div>
			<div class="col-2 offset-1 d-flex align-items-center justify-content-center">
				<div class="review-wrap2">
					<span class="review-star">5.0</span> <span class="review-car-name">차량이름2</span>
					<div  class="review-content"><p>리뷰내용 21313</p></div>

				</div>
			</div>
			<div class="col-2 offset-1 d-flex align-items-center justify-content-center">
				<div class="review-wrap3">
					<span class="review-star">5.0</span> <span class="review-car-name">차량이름3</span>
					<div  class="review-content"><p>리뷰내용 21313</p></div>
				</div>
			</div>
			<div class="col-2 offset-1 d-flex align-items-center justify-content-center">
				<div class="review-wrap4">
					<span class="review-star">5.0</span> <span class="review-car-name">차량이름3</span>
					<div  class="review-content"><p>리뷰내용 21313</p></div>
				</div>
			</div>
		</div>
	</article>



<!-- QnA 구역 ! -->
	<article class="container-fluid mx-auto qna_wrap ">

		<div class="row qna_title_wrap">
			<div class="col-3 qna_title">자주 묻는 질문</div>
			<input class="offset-sm-4 offset-md-8 col-1 btn btn-outline-dark qna_title_btn" type="button"
				value="더보기">
		</div>

		<div class="row align-items-center qna_list_wrap">

			<div>
				<a href="#" class="col-md-4 col-xl-3 offset-1">Q. 카시트 등 부가서비스는 어떻게 이용하나요?</a> <input
					type="button" value="▶"
					class=" btn btn-outline-dark col-1 offset-xs-3 offset-sm-4 offset-md-5 offset-xl-6  qna_btn">
			</div>
			<div>
				<a href="#" class="col-md-4 col-xl-3 offset-1">Q. 해외에 거주하고 있는데 예약 및 이용이 ...</a>
				<input type="button" value="▶"
					class="btn btn-outline-dark col-1 offset-xs-3 offset-sm-4 offset-md-5 offset-xl-6 qna_btn">
			</div>
			<div>
				<a href="#" class="col-md-4 col-xl-3 offset-1">Q. 사고 또는 고장 발생시 어떻게 해야하나요?</a> <input
					type="button" value="▶"
					class="btn btn-outline-dark col-1 offset-xs-3 offset-sm-4 offset-md-5 offset-xl-6 qna_btn">
			</div>

		</div>
	</article>

	<footer>
		<jsp:include page="inc/footer.jsp"></jsp:include>
	</footer>

</body>
</html>