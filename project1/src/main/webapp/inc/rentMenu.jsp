<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
.rent_menu {
	padding: 0px;
	width: 300px;
	background: #white;
	text-align: left;
	margin: 0;
}

.rent_menu ul {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

.rent_menu li {
	margin: 0;
	padding: 0;
	margin-top: 10px;
	display: inline-block;
}

.rent_menu div {
	padding: 5px 10px;
}

.submit_btn {
	margin: 0;
	padding:5px;
	margin-top: 10px;
	background-color: #ff7f02;
	font-weight:bold;
	color:white;
	width: 100%;
}

.submit_btn:hover {
	background-color: #FFB04B;

}
</style>

<div class="rent_menu">
	<div>대여지점</div>
	<div class="rent_location">
		<select class="form-select" name="rentLocation">
			<option value="서면점">서면점</option>
			<option value="구포역점">구포역점</option>
			<option value="부산역점">부산역점</option>
		</select>
	</div>

	<div>반납지점</div>
	<div class="return_location">
		<select class="form-select" name="returnLocation">
			<option value="서면점">서면점</option>
			<option value="구포역점">구포역점</option>
			<option value="부산역점">부산역점</option>
		</select>
	</div>
	<div class="car_type">
		<div>차종</div>
		<ul>
			<li><input class="btn-check" type="checkbox" name="carType"
				id="carType1" value="경형" /> <label class="btn btn-outline-dark"
				for="carType1">경형</label></li>
			<li><input class="btn-check" type="checkbox" name="carType"
				id="carType2" value="소형" /><label class="btn btn-outline-dark"
				for="carType2">소형</label></li>
			<li><input class="btn-check" type="checkbox" name="carType"
				id="carType3" value="준중형" /> <label class="btn btn-outline-dark"
				for="carType3">준중형</label></li>
			<li><input class="btn-check" type="checkbox" name="carType"
				id="carType4" value="중형" /> <label class="btn btn-outline-dark"
				for="carType4">중형</label></li>
			<li><input class="btn-check" type="checkbox" name="carType"
				id="carType5" value="대형" /> <label class="btn btn-outline-dark"
				for="carType5">대형</label></li>
			<li><input class="btn-check" type="checkbox" name="carType"
				id="carType6" value="suv" /> <label class="btn btn-outline-dark"
				for="carType6">SUV</label></li>
			<li><input class="btn-check" type="checkbox" name="carType" id="carType7" value="전기차" /> 
				<label class="btn btn-outline-dark" for="carType7">전기차</label></li>
		</ul>
	</div>
	<div class="car_fuel">
		<div>연료</div>
		<ul>
			<li><input class="btn-check" type="checkbox" name="carFure"
				id="carFure1" value="휘발유">
<label class="btn btn-outline-dark" for="carFure1">휘발유</label></li>
			<li><input class="btn-check" type="checkbox" name="carFure"
				id="carFure2" value="경유">
<label class="btn btn-outline-dark" for="carFure2">경유</label></li>
			<li><input class="btn-check" type="checkbox" name="carFure"
				id="carFure3" value="하이브리드"> 
<label class="btn btn-outline-dark" for="carFure3">하이브리드</label></li>
			<li><input class="btn-check" type="checkbox" name="carFure"
				id="carFure4" value="전기">
<label class="btn btn-outline-dark" for="carFure4">전기</label></li>
		</ul>
	</div>
	<input class="btn submit_btn" type="submit" value="차량 검색하고 예약하기">
</div>
