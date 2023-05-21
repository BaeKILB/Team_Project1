<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
.rent_menu {
	padding: 0px;
	padding-left: 5px;
	width: 300px;
	background: #eee;
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

.rent_menu>div {
	padding: 5px;
}

.submit_btn{
	margin: 0;
	margin-top: 10px;
	background-color:  #FF980D;
}
</style>

	<div class="rent_menu">
		<div>대여지점</div>
		<div class="rent_location">
			<select name="rentLocation">
				<option value="서면점">서면점</option>
				<option value="구포역점">구포역점</option>
				<option value="부산역점">부산역점</option>
			</select>
		</div>

		<div class="return_location">
			<div>반납지점</div>
			<select name="returnLocation">
				<option value="서면점">서면점</option>
				<option value="구포역점">구포역점</option>
				<option value="부산역점">부산역점</option>
			</select>
		</div>
		<div class="car_type">
			<div>차종</div>
			<ul>
				<li><input type="checkbox" name="carType" value="경형" /> <span>경형</span>
				</li>
				<li><input type="checkbox" name="carType" value="소형" /> <span>소형</span>
				</li>
				<li><input type="checkbox" name="carType" value="준중형" /> <span>준중형</span>
				</li>
				<li><input type="checkbox" name="carType" value="중형" /> <span>중형</span>
				</li>
				<li><input type="checkbox" name="carType" value="대형" /> <span>대형</span>
				</li>
				<li><input type="checkbox" name="carType" value="suv" /> <span>SUV</span>
				</li>
				<li><input type="checkbox" name="carType" value="전기차" /> <span>전기차</span>
				</li>
			</ul>
		</div>
		<div class="car_fuel">
			<div>연료</div>
			<ul>
				<li><input type="checkbox" name="carFure" value="휘발유">
					<span>휘발유</span></li>
				<li><input type="checkbox" name="carFure" value="경유"> <span>경유</span>
				</li>
				<li><input type="checkbox" name="carFure" value="하이브리드">
					<span>하이브리드</span></li>
				<li><input type="checkbox" name="carFure" value="전기"> <span>전기</span>
				</li>
			</ul>
		</div>
		<input class="submit_btn" type="submit" value="차량 검색하고 예약하기">
	</div>
