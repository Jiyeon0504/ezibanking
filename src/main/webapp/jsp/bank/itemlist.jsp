<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
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

<!-- 테이블 템플릿 css -->
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/ezibanking/css/table.css">

</head>
<body>


	<!-- ======= Header ======= -->
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<!-- End Header -->

	<main id="main">

		<!-- ======= Start Breadcrumbs ======= -->

		<div class="breadcrumbs">
			<div class="page-header d-flex align-items-center">
				<div class="container position-relative">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6 text-center">
							<h2>상품 목록</h2>
							<p>ezi 은행의 상품목록입니다</p>
						</div>
					</div>
				</div>
			</div>
			<nav>
				<div class="container">
					<ol>
						<li><a href="index.html">홈으로</a></li>
						<li>상품목록</li>
					</ol>
				</div>
			</nav>
		</div>
		<!-- End Breadcrumbs -->





		<!-- ======= Our Services Section ======= -->
		<!-- ======= Pricing Section ======= -->
		<section id="pricing" class="pricing sections-bg">
			<div class="container" data-aos="fade-up">



				<div class="row g-4 py-lg-5" data-aos="zoom-out"
					data-aos-delay="100">


					<c:forEach items="${itemList}" var="item">
						<div class="col-lg-4">
							<div class="pricing-item featured">
								<h3>${item.item_name}</h3>
								<div class="icon">
									<i class="bi bi-box"></i>
								</div>
								<h4>
									<sup></sup>${item.item_rate}<span> / 연이율</span>
								</h4>
								<ul>
									<li><i class="bi bi-check"></i> ${item.item_content}</li>

								</ul>

								<div class="text-center">
									<a href="/ezibanking/createAccount.do" class="buy-btn">개설하기</a>
								</div>
							</div>
						</div>
						<!-- End Pricing Item -->
					</c:forEach>





				</div>

			</div>
		</section>
		<!-- End Pricing Section -->








		<!-- ======= Footer ======= -->
		<footer id="footer" class="footer">
			<jsp:include page="/jsp/include/footer.jsp" />
		</footer>

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





	</main>
</body>
</html>