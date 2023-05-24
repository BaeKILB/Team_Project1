<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="jquery-3.7.0.js"></script>
<style>
	@import
		url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css')
		;
	
	* {
		margin: 0;
		padding: 0;
		border: 0;
		font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui,
			Roboto, helvetica neue, segoe ui, apple sd gothic neo, noto sans kr,
			malgun gothic, apple color emoji, segoe ui emoji, segoe ui symbol,
			sans-serif;
	}
	
	ol, ul {
		list-style: none;
	}
	
	a {
		text-decoration: none;
	}
	
	address {
		font-style: normal;
	}
	
	.inr {
		position: relative;
		max-width: 1400px;
		margin: 0 auto;
	}
	
	.ft_utill {
		margin: 0 0 45px;
	}
	
	.ft_utill>li {
		position: relative;
		display: inline-block;
		margin: 0 30px 0 0;
	}
	
	.ft_utill>li:before {
		content: '';
		position: absolute;
		top: 5px;
		right: -17px;
		width: 1px;
		height: 10px;
		background: rgba(0, 0, 0, 0.2);
	}
	
	.ft_utill>li:last-child {
		margin: 0;
	}
	
	.ft_utill>li:last-child:before {
		display: none;
	}
	
	.ft_utill>li>a {
		display: inline-block;
		font-size: 15px;
		font-weight: 500;
		color: rgba(0, 0, 0, 0.4);
	}
	
	.ft_utill>li>a.sp-blue {
		color: rgb(255, 94, 0);
	}
	
	.ft_info {
		border-top: 1px solid rgba(0, 0, 0, 0.1);
	}
	
	#footer {
		position: relative;
		z-index: 4;
		padding: 50px 0 80px;
		background: #fff;
		border-top: 1px solid rgba(0, 0, 0, 0.1);
	}
	
	#footer address b {
		padding: 0 5px 0 0;
		font-size: 15px;
		font-weight: 600;
		color: #757575;
	}
	
	#footer address span {
		padding: 0 20px 0 0;
	}
	
	#footer address span, #footer address a {
		display: inline-block;
		font-size: 15px;
		font-weight: 500;
		color: #a3a3a3;
		line-height: 1.5em;
	}
	
	#footer address {
		margin: 45px 0 0;
	}
	
	#footer address br {
		display: none;
	}
	
	.area_copy {
		display: flex;
		justify-content: space-between;
		align-items: center;
		margin: 18px 0 0;
	}
	
	.area_copy p {
		font-size: 15px;
		font-weight: 400;
		color: #1d1d1d;
		line-height: 1.3em;
		opacity: 0.3;
	}
	
	#footer.s_footer .ft_utill {
		margin: 0 0 45px;
	}
	
	@media all and (max-width:1500px) {
		.inr {
			width: 90%;
		}
	}
	
	@media all and (max-width:1200px) {
		#footer address br {
			display: block;
		}
	}
	
	@media all and (max-width:950px) {
		.ft_utill {
			margin: 60px 0 30px;
		}
	}
	
	@media all and (max-width:650px) {
		#footer address br {
			display: none;
		}
		#footer address {
			margin: 20px 0 0;
		}
		#footer address b, #footer address span, #footer address a {
			display: block;
			font-size: 14px;
		}
		#footer address b {
			margin: 7px 0 0;
		}
		.area_copy p {
			font-size: 14px;
		}
	}
	
	@media all and (max-width:550px) {
		#footer {
			padding: 50px 0;
		}
		.ft_utill {
			margin: 40px 0 20px;
		}
		.ft_utill>li {
			margin: 0 20px 0 0;
		}
		.ft_utill>li:before {
			right: -12px;
		}
		.ft_utill>li>a {
			font-size: 14px;
		}
	}
	
	@media all and (max-width:450px) {
		#footer {
			padding: 40px 0;
		}
		.ft_utill {
			margin: 30px 0 15px;
		}
		#footer address {
			margin: 15px 0 0;
		}
	}
</style>
</head>

<body>
	<footer id="footer" class="s_footer">
		<div class="inr">
			<ul class="ft_utill">
				<li><a href="#" class="sp-blue">이용약관</a></li>
				<li><a href="#">개인정보보호정책</a></li>
				<li><a href="#">이메일수집거부</a></li>
				<li><a href="#">자동차대여약관</a></li>
			</ul>
		</div>

		<div class="ft_info">
			<div class="inr">
				<address>
					<span>부산광역시 부산진구 부전동 112-3 삼한골든게이트 7층(본점)</span> <b>대표</b> <span>홍길동</span><br>
					<b>TEL</b> <span>051-123-4567</span> <b>FAX</b> <span>051-123-4568</span>
					<b>E-MAIL</b> <span>contact@tabolcar.co.kr</span>
				</address>
				<div class="area_copy">
					<p>© 2022 TABOLCAR. All Rights Reserved.</p>
				</div>
			</div>
		</div>
	</footer>
</body>

</html>