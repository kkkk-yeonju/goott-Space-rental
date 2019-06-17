<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	     
<!DOCTYPE html>
<html lang="ko">
<head>
<title>${ requestScope.title }</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="DirectoryPlus template project">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- home & notice -->
<link rel="stylesheet" type="text/css" href="/spacerental/resources/styles/bootstrap-4.1.2/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/spacerental/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/spacerental/resources/plugins/OwlCarousel2-2.3.4/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/spacerental/resources/plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="/spacerental/resources/plugins/OwlCarousel2-2.3.4/animate.css">
<link rel="stylesheet" type="text/css" href="/spacerental/resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="/spacerental/resources/styles/responsive.css">

<!-- space css -->
<link rel="stylesheet" href="/spacerental/resources/space/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"> 
<link rel="stylesheet" href="/spacerental/resources/space/fonts/icomoon/style.css">
<link rel="stylesheet" href="/spacerental/resources/space/css/owl.carousel.min.css">
<link rel="stylesheet" href="/spacerental/resources/space/css/magnific-popup.css">
<link rel="stylesheet" href="/spacerental/resources/space/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/spacerental/resources/space/css/style.css">

<!-- lose -->
<link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/css/default.css?ver=1011">
<link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/skin/board/basic/style.css?v2">
<link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/css/board.common.css?ver=1011">
<link rel="stylesheet" href="http://sample.paged.kr/purewhite/js/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/css/mobile.css?ver=1011">
<link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/css/contents.css?ver=1011">
<link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/plugin/featherlight/featherlight.min.css?ver=1011">

<script src="http://sample.paged.kr/purewhite/theme/pagedtheme/js/jquery-1.11.0.min.js"></script>
<script src="http://sample.paged.kr/purewhite/theme/pagedtheme/js/jquery.menu.min.js?ver=171222"></script>
<script src="http://sample.paged.kr/purewhite/js/common.js?ver=171222"></script>
<script src="http://sample.paged.kr/purewhite/theme/pagedtheme/js/WEBsiting.js?ver=221712222"></script>
<script src="http://sample.paged.kr/purewhite/js/wrest.js?ver=171222"></script>
<script src="http://sample.paged.kr/purewhite/js/placeholders.min.js"></script>
<script src="http://sample.paged.kr/purewhite/theme/pagedtheme/plugin/shuffleLetters/jquery.shuffleLetters.min.js"></script>
<script src="http://sample.paged.kr/purewhite/theme/pagedtheme/plugin/featherlight/featherlight.min.js"></script>

</head>
<body>

	<!-- Menu -->
	<div class="menu">
		<div class="menu_container text-right">
			<div class="menu_close">close</div>
			<nav class="menu_nav">
				<ul>
					<li><a href="/spacerental/">홈</a></li>
					<li><a href="/spacerental/space/spacelist">장소</a></li>
					<li><a href="/spacerental/space/lose">분실물</a></li>
					<li><a href="/spacerental/noticeview/notice">공지사항</a></li>
				</ul>
			</nav>
			<div class="menu_link">
				<a href="#">+Add Listing</a>
			</div>
		</div>
	</div>
	<div class="super_container">
	
		<!-- Header -->
		<header class="header">
			<div class="header_overlay"></div>
			<div class="header_content d-flex flex-row align-items-center justify-content-start">

				<!-- Logo -->
				<div class="logo">
					<a href="/spacerental/">빌려조<br> 찾아조<br>
					<span>&nbsp;&nbsp;&nbsp;&nbsp;다조+</span></a>
				</div>

				<!-- Header Nav -->
				<div class="header_right d-flex flex-row align-items-center justify-content-start ml-auto">
					<nav class="main_nav">
						<ul class="d-flex flex-row align-items-center justify-content-start">
							<li class="active"><a href="/spacerental/">홈</a></li>
							<li><a href="/spacerental/space/spacelist">장소</a></li>
							<li><a href="/spacerental/lost">분실물</a></li>
							<li><a href="/spacerental/noticeview/notice">공지사항</a></li>
						</ul>
					</nav>
					<!-- <div class="add_listing text-center trans_200"><a href="#">+Add Listing</a></div> -->				
						<c:choose>
			            <c:when test="${ empty loginuser }">
			            <div class="log_reg">
							<ul class="d-flex flex-row align-items-center justify-content-start">
				            	<li><a href="/spacerental/account/login">Login</a></li>
								<li><a href="/spacerental/account/register">Register</a></li>
							</ul>
						</div>
						<div class="hamburger"><i class="fa fa-bars trans_200"></i></div>
			            </c:when>
			            <c:otherwise>
				            <a href="/spacerental/space/mypage/${ loginuser.id }" style="text-decoration: none">
								${ loginuser.id }님 환영합니다.
							</a>     				   	
			            	<li><a href="/spacerental/account/logout">로그아웃</a></li>
			            </c:otherwise>
			            </c:choose>						
				</div>

			</div>
		</header>
