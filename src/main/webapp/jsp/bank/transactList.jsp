<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<link href="/ezibanking/css/font-face.css" rel="stylesheet" media="all">
<link href="/ezibanking/css/theme.css" rel="stylesheet" media="all">


<link href="/ezibanking/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

<link href="/ezibanking/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
<link href="/ezibanking/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">

<style>
.table-data3 thead {
    background: #333;
}

</style>
<!-- Favicons -->

</head>
<body>


	<!-- ======= Header ======= -->
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<!-- End Header -->


		<!-- ======= Start Breadcrumbs ======= -->
	<main id="main">

		<div class="breadcrumbs">
		
			<div class="page-header d-flex align-items-center">
				<div class="container position-relative">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6 text-center">
							<h2>거래 목록</h2>
							<p>고객님의 거래목록입니다</p>
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

<div class="main-content">
<div class="section__content section__content--p30">
<div class="row m-t-30">
<div class="col-md-12">

<div class="table-responsive m-b-40">
<table class="table table-borderless table-data3">
<thead>
<tr>
<th>거래 번호</th>
<th>거래 일시</th>
<th>거래 금액</th>
<th>거래 타입</th>
<th>내     용</th>
</tr>
</thead>

<tbody>

<c:forEach items="${transactList}" var="item">
<tr>
<td>${item.ts_no}</td>
<td>${item.t_date}</td>
<td>${item.t_amount}</td>
<td class="${item.t_type eq '이체' ? 'denied' : 'process'}">${item.t_type}</td>
<td>${item.t_comment}</td>
</tr> 
</c:forEach>


</tbody>
</table>
</div>
</div></div></div></div>


</div></section>
		<!-- End Pricing Section -->




		<script data-cfasync="false"
			src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
		<script src="js/jquery.min.js"></script>
		<script src="js/popper.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/main.js"></script>
		<script defer
			src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816"
			integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw=="
			data-cf-beacon='{"rayId":"7dccce4a8a55262f","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.4.0","si":100}'
			crossorigin="anonymous"></script>






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