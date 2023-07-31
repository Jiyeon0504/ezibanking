<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en">

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

	<!-- ======= Header ======= -->
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero" class="hero">
		<div class="container position-relative">
			<div class="row gy-5" data-aos="fade-in">
				<div
					class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center text-center text-lg-start">
					<h2>
						ezi은행에서 <span><br>모든 은행 조회를 한번에</span>
					</h2>
					<p>오픈뱅킹서비스로 ezi은행에서 조회부터 이체까지 !</p>
					<div class="d-flex justify-content-center justify-content-lg-start">
						<a href="#about" class="btn-get-started">지금 시작하기</a>

					</div>
				</div>
				<div class="col-lg-6 order-1 order-lg-2">
					<img src="/ezibanking/img/1.webp" class="img-fluid" alt=""
						data-aos="zoom-out" data-aos-delay="100">
				</div>
			</div>
		</div>
		<c:choose>

			<c:when test="${ loginUser.user_id eq 'manager' }">

				<div class="icon-boxes position-relative">
					<div class="container position-relative">
						<div class="row gy-4 mt-5">

							<div class="col-xl-3 col-md-6" data-aos="fade-up"
								data-aos-delay="100">
								<div class="icon-box">
									<div class="icon">
										<i class="bi bi-easel"></i>
									</div>
									<h4 class="title">
										<a href="" class="stretched-link">상품수정</a>
									</h4>
								</div>
							</div>
							<!--End Icon Box -->

							<div class="col-xl-3 col-md-6" data-aos="fade-up"
								data-aos-delay="200">
								<div class="icon-box">
									<div class="icon">
										<i class="bi bi-receipt-cutoff"></i>
									</div>
									<h4 class="title">
										<a href="" class="stretched-link">내역조회</a>
									</h4>
								</div>
							</div>
							<!--End Icon Box -->

							<div class="col-xl-3 col-md-6" data-aos="fade-up"
								data-aos-delay="300">
								<div class="icon-box">
									<div class="icon">
										<i class="bi bi-chat-right-text"></i>
									</div>
									<h4 class="title">
										<a href="" class="stretched-link">문의게시판</a>
									</h4>
								</div>
							</div>
							<!--End Icon Box -->

							<div class="col-xl-3 col-md-6" data-aos="fade-up"
								data-aos-delay="500">
								<div class="icon-box">
									<div class="icon">
										<i class="bi bi-megaphone"></i>
									</div>
									
									<h4 class="title">
										<a href="" class="stretched-link">공지사항</a>
									</h4>
								</div>
							</div>
							<!--End Icon Box -->

						</div>
					</div>
				</div>
			</c:when>
			<c:when test="${ not empty loginUser }">


				<div class="icon-boxes position-relative">
					<div class="container position-relative">
						<div class="row gy-4 mt-5">

							<div class="col-xl-3 col-md-6" data-aos="fade-up"
								data-aos-delay="100">
								<div class="icon-box">
									<div class="icon">
										<i class="bi bi-easel"></i>
									</div>
									<h4 class="title">
										<a href="" class="stretched-link">상품가입</a>
									</h4>
								</div>
							</div>
							<!--End Icon Box -->

							<div class="col-xl-3 col-md-6" data-aos="fade-up"
								data-aos-delay="200">
								<div class="icon-box">
									<div class="icon">
										<i class="bi bi-receipt-cutoff"></i>
									</div>
									<h4 class="title">
										<a href="" class="stretched-link">내역조회</a>
									</h4>
								</div>
							</div>
							<!--End Icon Box -->

							<div class="col-xl-3 col-md-6" data-aos="fade-up"
								data-aos-delay="300">
								<div class="icon-box">
									<div class="icon">
										<i class="bi bi-chat-right-text"></i>
									</div>
									<h4 class="title">
										<a href="" class="stretched-link">문의게시판</a>
									</h4>
								</div>
							</div>
							<!--End Icon Box -->

							<div class="col-xl-3 col-md-6" data-aos="fade-up"
								data-aos-delay="500">
								<div class="icon-box">
									<div class="icon">
										<i class="bi bi-megaphone"></i>
									</div>
									<h4 class="title">
										<a href="" class="stretched-link">공지사항</a>
										
									</h4>
								</div>
							</div>
							<!--End Icon Box -->

						</div>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="icon-boxes position-relative">
					<div class="container position-relative">
						<div class="row gy-4 mt-5">

							<div class="col-xl-3 col-md-6" data-aos="fade-up"
								data-aos-delay="100">
								<div class="icon-box">
									<div class="icon">
										<i class="bi bi-easel"></i>
									</div>
									<h4 class="title">
										<a href="" class="stretched-link">상품가입</a>
									</h4>
								</div>
							</div>
							<!--End Icon Box -->

							<div class="col-xl-3 col-md-6" data-aos="fade-up"
								data-aos-delay="200">
								<div class="icon-box">
									<div class="icon">
										<i class="bi bi-receipt-cutoff"></i>
									</div>
									<h4 class="title">
										<a href="" class="stretched-link">내역조회</a>
									</h4>
								</div>
							</div>
							<!--End Icon Box -->

							<div class="col-xl-3 col-md-6" data-aos="fade-up"
								data-aos-delay="300">
								<div class="icon-box">
									<div class="icon">
										<i class="bi bi-chat-right-text"></i>
									</div>
									<h4 class="title">
										<a href="" class="stretched-link">문의게시판</a>
									</h4>
								</div>
							</div>
							<!--End Icon Box -->

							<div class="col-xl-3 col-md-6" data-aos="fade-up"
								data-aos-delay="500">
								<div class="icon-box">
									<div class="icon">
										<i class="bi bi-megaphone"></i>
									</div>
									<h4 class="title">
										<!-- <a href="getnotice.do" class="stretched-link">공지사항</a> -->
										<a href="${ pageContext.request.contextPath }/board" class="stretched-link">게시판</a>
									</h4>
								</div>
							</div>
							<!--End Icon Box -->

						</div>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</section>
	<!-- End Hero Section -->

	<main id="main">




		<!-- ======= 빠른 질문과 답변 ======= -->
		<section id="faq" class="faq">
			<div class="container" data-aos="fade-up">

				<div class="row gy-4">

					<div class="col-lg-4">
						<div class="content px-xl-5">
							<br> <br> <br>
							<h3>
								자주하는 질문 <strong>FAQ</strong>
							</h3>
							<p>궁금하신 점을 고객지원 자주하는 질문에서 찾아보세요.</p>
							<!--없으면 질문하기 버튼 누르게하기-->
							<section id="hero2" class="hero2">
								<div
									class="d-flex justify-content-center justify-content-lg-start">
									<a href="/ezibanking/writeqna.do" class="btn-get-started">
										문의하기</a>
								</div>
							</section>


						</div>
					</div>

					<div class="col-lg-8">
						<br> <br> <br>
						<div class="accordion accordion-flush" id="faqlist"
							data-aos="fade-up" data-aos-delay="100">

							<div class="accordion-item">
								<h3 class="accordion-header">

									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#faq-content-1">
										<span class="num">1.</span> 비밀번호 수정은 어디에서 하나요?
									</button>
								</h3>
								<div id="faq-content-1" class="accordion-collapse collapse"
									data-bs-parent="#faqlist">
									<div class="accordion-body">[마이페이지] - [회원정보수정] 에서 수정하실 수
										있습니다.</div>
								</div>
							</div>
							<!-- # Faq item-->

							<div class="accordion-item">
								<h3 class="accordion-header">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#faq-content-2">
										<span class="num">2.</span> Feugiat scelerisque varius morbi
										enim nunc faucibus a pellentesque?
									</button>
								</h3>
								<div id="faq-content-2" class="accordion-collapse collapse"
									data-bs-parent="#faqlist">
									<div class="accordion-body">Dolor sit amet consectetur
										adipiscing elit pellentesque habitant morbi. Id interdum velit
										laoreet id donec ultrices. Fringilla phasellus faucibus
										scelerisque eleifend donec pretium. Est pellentesque elit
										ullamcorper dignissim. Mauris ultrices eros in cursus turpis
										massa tincidunt dui.</div>
								</div>
							</div>
							<!-- # Faq item-->

							<div class="accordion-item">
								<h3 class="accordion-header">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#faq-content-3">
										<span class="num">3.</span> Dolor sit amet consectetur
										adipiscing elit pellentesque habitant morbi?
									</button>
								</h3>
								<div id="faq-content-3" class="accordion-collapse collapse"
									data-bs-parent="#faqlist">
									<div class="accordion-body">Eleifend mi in nulla posuere
										sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar
										elementum integer enim. Sem nulla pharetra diam sit amet nisl
										suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna
										duis convallis convallis tellus. Urna molestie at elementum eu
										facilisis sed odio morbi quis</div>
								</div>
							</div>
							<!-- # Faq item-->




						</div>

					</div>
				</div>



			</div>
		</section>
		<!-- End Frequently Asked Questions Section -->



		<!-- ======= Contact Section ======= -->
		<section id="contact" class="contact">
			<div class="container" data-aos="fade-up">

				<div class="section-header">
					<h2>Contact</h2>
					<p>Nulla dolorum nulla nesciunt rerum facere sed ut inventore
						quam porro nihil id ratione ea sunt quis dolorem dolore earum</p>
				</div>
				<div class="row mt-5" id="googlemap">

					<div class="row gx-lg-0 gy-4">

						<div class="col-lg-4">

							<div
								class="info-container d-flex flex-column align-items-center justify-content-center">
								<div class="info-item d-flex">
									<i class="bi bi-geo-alt flex-shrink-0"></i>
									<div>
										<h4>Location:</h4>
										<p>경기도 성남시 수정구 수정로 398 <br> 드림관 2층<br> 하이테크 인공지능소프트웨어과 <br></p>
									</div>
								</div>
								<!-- End Info Item -->

								<div class="info-item d-flex">
									<i class="bi bi-envelope flex-shrink-0"></i>
									<div>
										<h4>Email:</h4>
										<p>jyoni@gmail.com</p>
									</div>
								</div>
								<!-- End Info Item -->

								<div class="info-item d-flex">
									<i class="bi bi-phone flex-shrink-0"></i>
									<div>
										<h4>Call:</h4>
										<p>+82 031-739-4000</p>
									</div>
								</div>
								<!-- End Info Item -->

								<div class="info-item d-flex">
									<i class="bi bi-clock flex-shrink-0"></i>
									<div>
										<h4>Open Hours:</h4>
										<p>Mon-Fri: 9AM - 18PM</p>
									</div>
								</div>
								<!-- End Info Item -->
							</div>

						</div>

						<div class="col-lg-8">
							<form action="forms/contact.php" method="post" role="form"
								class="php-email-form" style="display: flex; justify-content: center; align-items: center;">
								<div class="row">

									<div>
										<iframe
											src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d21305.715677150853!2d127.14227922477284!3d37.45804002333402!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357caf33963d4e07%3A0xf472ab67f14582d2!2z7ZWc6rWt7Y-066as7YWN64yA7ZWZIOyEseuCqOy6oO2NvOyKpA!5e0!3m2!1sko!2sus!4v1687418168308!5m2!1sko!2sus"
											width="800" height="400" style="border: 0;"
											allowfullscreen="" loading="lazy"
											referrerpolicy="no-referrer-when-downgrade"></iframe>
									</div>
								</div>
							</form>
						</div>
						<!-- End Contact Form -->

					</div>

				</div>
		</section>
		<!-- End Contact Section -->

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">

		<div class="container">
			<div class="row gy-4">
				<div class="col-lg-5 col-md-12 footer-info">
					<a href="index.html" class="logo d-flex align-items-center"> <span>ezi은행</span>
					</a>
					<p>이지은행을 이용해주셔서 감사합니다.</p>

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

				<div
					class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
					<h4>Contact Us</h4>
					<p>
						경기도 성남시 수정구 수정로 398 <br> 드림관 2층<br> 하이테크 인공지능소프트웨어과 <br>
						이지연<br> <strong>Call:</strong> 031-739-4000<br> <strong>Email:</strong>
						jyoni@gmail.com<br>
					</p>

				</div>

			</div>
		</div>

		<div class="container mt-4">
			<div class="copyright">
				&copy; Copyright <strong><span>Impact</span></strong>. All Rights
				Reserved
			</div>
			<div class="credits">
				<!-- All the links in the footer should remain intact. -->
				<!-- You can delete the links only if you purchased the pro version. -->
				<!-- Licensing information: https://bootstrapmade.com/license/ -->
				<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/impact-bootstrap-business-website-template/ -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>

	</footer>
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

</body>

</html>