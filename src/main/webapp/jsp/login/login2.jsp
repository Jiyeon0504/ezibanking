<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>ezi은행</title>
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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="/ezibanking/css/login.css">

<!-- login css  -->
<link
	href="/ezibanking/css/login2.css"
	rel="stylesheet" />
<style>
			img { display: block; margin: 0px auto; }
		</style>

<!-- =======================================================
  * Template Name: Impact
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/impact-bootstrap-business-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Header ======= -->
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<!-- End Header -->

	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs">
			<div class="page-header d-flex align-items-center"
				style="background-image: url('');">
				<div class="container position-relative">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6 text-center">
							<h2>로그인</h2>
							<p>로그인을 하시면 더욱 다양한 서비스를 이용하실 수 있습니다.</p>
						</div>
					</div>
				</div>
			</div>
			<nav>
				<div class="container">
					<ol>
						<li><a href="index.html">홈</a></li>
						<li>로그인</li>
					</ol>
				</div>
			</nav>
		</div>
		<!-- End Breadcrumbs -->

		<section class="sample-page">
			<div class="container" data-aos="fade-up">

				<p>

					<!--  html 전체 영역을 지정하는 container -->
				<div id="container" class="vh-80">
					<div class="container py-5 h-80">
						<div
							class="row d-flex align-items-center justify-content-center h-80">
							<div class="col-md-8 col-lg-7 col-xl-6">
								<img 
									src="/ezibanking/img/2.png"
									class="img-fluid" alt="Phone image">
							</div>
							<div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
								<!--  login 폼 영역을 : loginBox -->
								<form method="post" action="/ezibanking/loginProcess.do"
									name="loginForm" onsubmit="return checkForm()">
									<div id="loginBox">

										<!-- 로그인 페이지 타이틀 -->
										<div id="loginBoxTitle">ezi bank Login</div>
										<!-- 아이디, 비번, 버튼 박스 -->




										<div id="inputBox">
											<div class="form-outline mb-4">
												<input type="text" name="user_id"
													class="form-control form-control-lg" /> <label
													class="form-label" for="form1Example13">ID</label>
											</div>
											<div class="form-outline mb-4">
												<input type="password" name="user_password"
													class="form-control form-control-lg" /> <label
													class="form-label" for="form1Example23">Password</label>
											</div>
											<br>

											<div class="button-login-box">
												<button type="submit" class="btnxs" style="width: 100%">로그인</button>
											</div>
										</div>

									</div>
								</form>
							</div>
</div>
</div>
</div>
</div>
</section>
							<!-- Bootstrap Bundle with Popper -->
							<script
								src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
								integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
								crossorigin="anonymous"></script>
							<!-- 	<section>
						<div class="container">
							<form method="post" action="/ezibanking/loginProcess.do"
								name="loginForm" onsubmit="return checkForm()">
								<div class="form-group">
									<br> <br>
									<h2>로그인</h2>
									<br> <br>
								</div>
								<div class="form-group">
									<label for="id">ID</label> <input type="text"
										placeholder="아이디를 입력하세요" id="id" name="id">
								</div>
								<div class="form-group">
									<label for="password">Password</label> <input type="password"
										placeholder="비밀번호를 입력하세요" id="password" name="password">
								</div>
								<div class="form-group">
									<button type="submit" class="btn-center">로그인</button>
								</div>
							</form>
						</div>
					</section> -->
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<jsp:include page="/jsp/include/footer.jsp" />
		<!--  <div class="container">
      <div class="row gy-4">
        <div class="col-lg-5 col-md-12 footer-info">
          <a href="index.html" class="logo d-flex align-items-center">
            <span>Impact</span>
          </a>
          <p>Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus.</p>
          <div class="social-links d-flex mt-4">
            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

        <div class="col-lg-2 col-6 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Terms of service</a></li>
            <li><a href="#">Privacy policy</a></li>
          </ul>
        </div>

        <div class="col-lg-2 col-6 footer-links">
          <h4>Our Services</h4>
          <ul>
            <li><a href="#">Web Design</a></li>
            <li><a href="#">Web Development</a></li>
            <li><a href="#">Product Management</a></li>
            <li><a href="#">Marketing</a></li>
            <li><a href="#">Graphic Design</a></li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
          <h4>Contact Us</h4>
          <p>
            A108 Adam Street <br>
            New York, NY 535022<br>
            United States <br><br>
            <strong>Phone:</strong> +1 5589 55488 55<br>
            <strong>Email:</strong> info@example.com<br>
          </p>

        </div>

      </div>
    </div>

    <div class="container mt-4">
      <div class="copyright">
        &copy; Copyright <strong><span>Impact</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        All the links in the footer should remain intact.
        You can delete the links only if you purchased the pro version.
        Licensing information: https://bootstrapmade.com/license/
        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/impact-bootstrap-business-website-template/
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div> -->

	</footer>
	<!-- End Footer -->
	<!-- End Footer -->

	<a href="#"
		class="scroll-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<div id="preloader"></div>

	<!-- Vendor JS Files -->
	<script src="/ezibanking/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/ezibanking/vendor/aos/aos.js"></script>
	<script src="/ezibanking/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="/ezibanking/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="/ezibanking/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="/ezibanking/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="/ezibanking/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="/ezibanking/js/main.js"></script>
	<!-- MDB -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.js"></script>

</body>

</html>