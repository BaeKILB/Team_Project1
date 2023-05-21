<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>

.calender ul {
	list-style-type: none;
}

.calender {
	width: 300px;
	box-sizing: border-box;
	
}

.cal_rent {
	text-align: center; margin : 0;
	background-color: #0B294B;
	margin: 0;
}

.cal_rent div {
	display: inline-block;
	line-height: 5px;
	color: white;
}

.cal_rent_day {
	padding-left: 10px;
	padding-right: 40px;
}

.cal_return_day {
	padding-left: 40px;
	padding-right: 10px;
}

.cal_month {
	background: #FF7F02;
	text-align: center;
}

.cal_month ul {
	margin: 0;
	padding: 0;
}

.cal_month ul li {
	color: white;
	font-size: 20px;
	text-transform: uppercase;
	letter-spacing: 3px;
}

.cal_month .prev {
	float: left;
	padding-top: 10px;
	padding-left: 10px;
}

.cal_month .next {
	float: right;
	padding-top: 10px;
	padding-right: 10px;
}

.cal_weeks {
	margin: 0;
	padding: 10px 0;
	background-color: #ddd;
}

.cal_weeks li {
	display: inline-block;
	width: 12%;
	color: #666;
	text-align: center;
}

.cal_days {
	padding: 10px 0;
	background: #eee;
	margin: 0;
}

.cal_days li {
	list-style-type: none;
	display: inline-block;
	width: 12%;
	text-align: center;
	margin-bottom: 5px;
	font-size: 12px;
	color: #777;
}

.cal_active {
	padding: 5px;
	background: #1abc9c;
	color: white !important
}

.cal_active_lite {
	padding: 5px;
	background: #9ed5e8;
	color: white !important
}

.cal_hour {
	text-align: center;
	border-top: 1px solid gray;
	background: #EDEDED;
}

.cal_hour>div {
	margin: 0px;
	padding: 5px; 
	display: inline-block;
}

/* Add media queries for smaller screens */
/* @media screen and (max-width:720px) { */
/*   .weekdays li, .days li {width: 13.1%;} */
/* } */

/* @media screen and (max-width: 420px) { */
/*   .weekdays li, .days li {width: 12.5%;} */
/*   .days li .active {padding: 2px;} */
/* } */

/* @media screen and (max-width: 290px) { */
/*   .weekdays li, .days li {width: 12.2%;} */
/* } */
</style>

	<div class="calender">
		<div class="cal_rent">
			<div class="cal_rent_day">
				<p>대여일</p>
				<p>
					<span class="cal_rent_day_month">5월</span> <span
						class="cal_rent_day_date">13일</span>
				</p>
			</div>
			<!-- 			화살표이미지 -->
			<!-- 			<img alt="▶" src=""> -->
			<div class="cal_return_day">
				<p>반납일</p>
				<p>
					<span class="cal_return_day_month">5월</span> <span
						class="cal_return_day_date">15일</span>
				</p>
			</div>
		</div>


		<div class="cal_month">
			<ul>
				<li class="prev">&#10094;</li>
				<li class="next">&#10095;</li>
				<li>August<br> <span style="font-size: 18px">2021</span>
				</li>
			</ul>
		</div>

		<ul class="cal_weeks">
			<li>Mo</li>
			<li>Tu</li>
			<li>We</li>
			<li>Th</li>
			<li>Fr</li>
			<li>Sa</li>
			<li>Su</li>
		</ul>

		<ul class="cal_days">
			<li>1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
			<li>6</li>
			<li>7</li>
			<li>8</li>
			<li>9</li>
			<li>10</li>
			<li>11</li>
			<li>12</li>
			<li><span class="cal_active">13</span></li>
			<li><span class="cal_active_lite">14</span></li>
			<li><span class="cal_active">15</span></li>
			<li>16</li>
			<li>17</li>
			<li>18</li>
			<li>19</li>
			<li>20</li>
			<li>21</li>
			<li>22</li>
			<li>23</li>
			<li>24</li>
			<li>25</li>
			<li>26</li>
			<li>27</li>
			<li>28</li>
			<li>29</li>
			<li>30</li>
			<li>31</li>
		</ul>
		<div class="cal_hour">
			<div class="cal_hour_rent">
				<div>대여일시</div>
				<select name="rentHour">
					<c:forEach var="i" begin="0" end="24">
						<c:choose>
							<c:when test="${ i < 10 }">
								<option value="0${ i }">0${ i }</option>
							</c:when>
							<c:otherwise>
								<option value="${ i }">${ i }</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</select> <label for="rentHour">시</label> <select name="rentMinute">
					<c:forEach var="i" begin="0" end="59">
						<c:choose>
							<c:when test="${ i < 10 }">
								<option value="0${ i }">0${ i }</option>
							</c:when>
							<c:otherwise>
								<option value="${ i }">${ i }</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</select> <label for="rentMinute">분</label>
			</div>

			<div class="cal_hour_return">
				<div>반납일시</div>

				<select name="returnHour">
					<c:forEach var="i" begin="0" end="24">
						<c:choose>
							<c:when test="${ i < 10 }">
								<option value="${ i }">0${ i }</option>
							</c:when>
							<c:otherwise>
								<option value="${ i }">${ i }</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</select> <label for="returnHour">시</label> <select name="returnMinute">
					<c:forEach var="i" begin="0" end="59">
						<c:choose>
							<c:when test="${ i < 10 }">
								<option value="0${ i }">0${ i }</option>
							</c:when>
							<c:otherwise>
								<option value="${ i }">${ i }</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</select> <label for="returnMinute">분</label>

			</div>
		</div>
	</div>

