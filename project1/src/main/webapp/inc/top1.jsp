<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <header id="header">
        <div class="wrapper">
            <h1 class="h_logo">
                <a href="./"></a>
            </h1>
            <nav class="nav">
                <ul class="gnb">
                    <li class="gnb_cont">
                        <a href="#">차량예약</a>
                    </li>
                    <li class="gnb_cont">
                        <a href="#">차량안내</a>
                    </li>
                    <li class="gnb_cont">
                        <a href="#">고객센터</a>
                        <ul class="sub_menu shadow" style="display: none;">
                            <li>
                                <a href="#">공지사항</a>
                            </li>
                            <li>
                                <a href="#">FAQ</a>
                            </li>
                            <li>
                                <a href="#">1:1 문의</a>
                            </li>
                        </ul>
                    </li>
                    <li class="gnb_cont">
                        <a href="#">예약확인</a>
                    </li>
                </ul>
                <ul class="login_section">
                    <li>
                        <a href="#">
                            <i class="xi-user"></i>
                            로그인
                        </a>
                    </li>
                    <li class="btn_register">
                        <a href="#">
                            회원가입
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
    <header class="header mb">
        <div class="wrapper">
            <h2 class="h_logo">
                <a href="./"></a>
            </h2>
            <div class="hbg_btn">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>

    </header>
    <nav class="gnb mb" style="display: none;">
        <div class="bg"></div>
        <div class="menu">
            <div class="menu_wrap">
                <h2 class="h_logo">
                    <a href="./"></a>
                </h2>
                <ul class="menu_section">
                    <li class="gnb_cont">
                        <a href="#">차량예약</a>
                    </li>
                    <li class="gnb_cont">
                        <a href="#">차량안내</a>
                    </li>
                    <li class="gnb_cont plus">
                        <a href="#">고객센터</a>
                        <ul class="sub_menu" style="display: block;">
                            <li>
                                <a href="#">공지사항</a>
                            </li>
                            <li>
                                <a href="#">FAQ</a>
                            </li>
                            <li>
                                <a href="#">1:1 문의</a>
                            </li>
                        </ul>
                    </li>
                    <li class="gnb_cont">
                        <a href="#">예약안내</a>
                    </li>
                    <ul class="login_section">
                        <li>
                            <a href="#">
                                <i class="xi-user"></i>
                                로그인
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="xi-user"></i>
                                회원가입
                            </a>
                        </li>
                    </ul>
                </ul>
                <div class="btn_close">
                    <span></span>
                    <span></span>
                </div>
            </div>

        </div>

    </nav>

    <script>

        let subMenu = $('#header .gnb .sub_menu');
        let mainMenu = $('#header .gnb .gnb_cont');
        subMenu.hide(); //서브메뉴 안보이게 처리
        mainMenu.hover(function () { //메인메뉴 마우스오버했을 때
            $(this).find('.sub_menu').stop().fadeIn();
        }, function () { //마우스 떨어졌을때
            subMenu.stop().fadeOut();
        });
        subMenu.hover(function () {
            $(this).siblings('a').addClass('active');
        }, function () {
            $('#header .gnb .gnb_cont > a').removeClass('active');
        });


        //모바일 메뉴
        $('.gnb.mb').hide();
        $('.header.mb .hbg_btn').click(function () {
            $('.gnb').fadeIn();
        });


        $('.gnb.mb .menu .menu_section .sub_menu').hide();
        $('.gnb.mb .menu .menu_section .gnb_cont').click(function (e) {
            $(this).toggleClass('open');
            $(this).find('.sub_menu').slideToggle();
        });

        $('.gnb.mb .bg , .gnb.mb .menu .btn_close').click(function () {
            $('.gnb').fadeOut();

        });
        
        // 0523 경인 업데이트 
        //		스크롤시 탑 네비바 색 변화
        $(function () {
            $(document).scroll(function () {
                var $nav = $("#header");
                $nav.toggleClass("scroll", $(this).scrollTop() > $nav.height()*0.5);
            });
        });
    </script>

