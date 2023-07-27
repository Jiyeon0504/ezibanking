<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Impact Bootstrap Template - Index</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/ezibanking/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/ezibanking/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="/ezibanking/vendor/aos/aos.css" rel="stylesheet">
<link href="/ezibanking/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="/ezibanking/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/ezibanking/css/main.css" rel="stylesheet">


<!-- =======================================================
  * Template Name: Impact
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/impact-bootstrap-business-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
	<section id="topbar" class="topbar d-flex align-items-center">
		<div
			class="container d-flex justify-content-center justify-content-md-between">
			<div class="contact-info d-flex align-items-center">
				<i class>반갑습니다 ezi 은행 입니다</a></i>

			</div>

		</div>
	</section>
	<!-- End Top Bar -->

	<header id="header" class="header d-flex align-items-center">

		<div
			class="container-fluid container-xl d-flex align-items-center justify-content-between">
			<a href="/ezibanking/main.do" class="logo d-flex align-items-center">
				<!-- Uncomment the line below if you also wish to use an image logo -->
				<!-- <img src="assets/img/logo.png" alt=""> -->
				<h1>
					ezi 은행<span>.</span>
				</h1>

			</a>

			<nav id="navbar2" class="navbar">

				<c:if test="${ not empty loginUser }">
						<a class="user-name">[${ loginUser.user_name }(${ loginUser.user_id })님
								로그인중...]</a>
					<ul>
						<li><a href="/ezibanking/logout.do">로그아웃</a></li>
					</ul>


				</c:if>
				<c:if test="${ empty loginUser }">
					<ul>
						<li><a href="/ezibanking/login.do">로그인</a></li>
						<li><a href="/ezibanking/memjoin.do">회원가입</a></li>
					</ul>
				</c:if>
			</nav>
			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="/ezibanking/main.do">홈으로</a></li>
					<li class="dropdown"><a href="/ezibanking/getMyAcclist.do"><span>내 계좌</span> <i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li><a href="/ezibanking/transactList.do">입출금내역</a></li>
							<li><a href="/ezibanking/getitemlist.do">계좌개설</a></li>
							<li><a href="/ezibanking/transaction.do">계좌이체</a></li>
							<li><a href="#">전체계좌조회</a></li>
							<li><a href="#">계좌해지</a></li>
						</ul></li>
					<li class="dropdown"><a href="#about"><span>오픈뱅킹</span> <i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li><a href="#">약관보기</a></li>
							<li><a href="#">계좌조회</a></li>
						</ul></li>
					<li class="dropdown"><a href="#services"><span>마이페이지</span>
							<i class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li><a href="#">회원정보수정</a></li>
							<li><a href="#">회원탈퇴</a></li>
						</ul></li>
					<li><a href="#faq">문의하기</a></li>
					<li><a href="#portfolio">공지사항</a></li>


				</ul>
			</nav>
			<!-- .navbar -->

			<i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i> <i
				class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

		</div>
	</header>






	<!-- <header class="center clearfix" id="navtop"> 
<a href="index.html" class="logo fleft">

</a>
  <nav class="fright">
    <ul>
      <li><a href="/ezibanking/main.do" >Home</a></li>  </ul>
        <ul>
      <li><a href="/ezibanking/history.do">조회</a></li>
    </ul>
    <ul>
      <li><a href="works.html">이체</a></li></ul>
        <ul>
      <li><a href="services.html">오픈뱅킹</a></li>
    </ul>
    <ul>
      <li><a href="blog.html">공지사항</a></li></ul>
        <ul>
      <li><a href="contact.html">문의사항</a></li>
    </ul>
        <ul>
      <li><a href="/ezibanking/jsp/login/login.jsp">로그인</a></li>
    </ul>
  </nav>
</header>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Tenth navbar example">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/ezibanking/main.do" >ezibank</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/ezibanking/history.do">조회</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="/ezibanking/trade.do">이체</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled">오픈뱅킹</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled">공지사항</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">Dropdown</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>
   -->


</body>
</html>