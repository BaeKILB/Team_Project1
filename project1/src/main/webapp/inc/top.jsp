<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="UTF-8">
<style type="text/css">
.nav_wrap a {
	text-decoration: none;
	color: black;
	margin-left: 10px;
	margin-right: 10px;
	font-weight: bold;
}

#top_logo, #top_menu, #top_member_menu {
	display: inline-block;
}

#top_logo {
	float: left;
}

#top_member_menu {
	float: right;
}

.top_login {
	color: blue;
}
.top_menu_item_res{
	padding: 5px;
	background-color: aqua;
}
</style>

<script>
	function logout() {
		let isLogout = confirm("로그아웃 하시겠습니까?");

		if (isLogout) {
			location.href = "./MemberLogout.me";
		}
	}
</script>

	<div class="nav_wrap" align="center">

		<div id="top_logo">
			<a href="./"> <img alt="렌터카 로고" src="">
			</a>
		</div>

		<div id="top_menu">
			<a href="ResCarList.res" class="top_menu_item">차량예약</a> <a
				href="ResCarList.res" class="top_menu_item">차량안내</a> <a
				href="ResCarList.res" class="top_menu_item">고객센터</a> <a
				href="ResCarList.res" class="top_menu_item_res">예약확인</a>
		</div>

		<div id="top_member_menu">
			<c:choose>
				<c:when test="${empty sessionScope.sId}">
					<a href="./MemberLoginForm.me" class="top_login">로그인</a>
					<a href="./MemberJoinForm.me">회원가입</a>
				</c:when>
				<c:otherwise>
					<%-- 아이디 클릭 시 회원정보 조회 --%>
					<a href="./MemberInfo.me">${sessionScope.sId } 님</a>
					<a href="javascript:logout();">로그아웃</a>
					<%-- 만약 세션아이디가 admin 일 경우 관리자 페이지 표시 --%>
					<c:if test="${sessionScope.sId eq 'admin'}">
						<a href="./MemberList.me">관리자 페이지</a>
					</c:if>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
