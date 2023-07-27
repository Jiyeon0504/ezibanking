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

<!-- <style>
#btn2 {

	background: #008374;
	width:142px
	border: 0;
	padding: 14px 45px;
	color: #fff;
	transition: 0.4s;
	border-radius: 50px;
}
</style> -->

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
							<h2>문의하기</h2>
							<!--  <p>회원가입을 하시면 더욱 다양한 서비스를 이용하실 수 있습니다.</p> -->
						</div>
					</div>
				</div>
			</div>
			<nav>
				<div class="container">
					<ol>
						<li><a href="index.html">홈으로</a></li>
						<li>문의하기</li>
					</ol>
				</div>
			</nav>
		</div>
		<!-- End Breadcrumbs -->

		<%-- 		<table border="1">
			<tr>
				<td>NO.</td>
				<td>TITLE</td>
				<td>WRITER</td>
				<td>DATE</td>
				<td>VIEWS</td>
			</tr>
			<c:forEach var="board" items="${boardList}">
				<tr>
					<td>${board.seq}</td>
					<td><a href="getBoard.do?seq=${board.seq}"> ${board.title}</a></td>
					<td>${board.writer}</td>
					<td>${board.regDate}</td>
					<td>${board.views}</td>
			</c:forEach>
		</table>
 --%>





		<section id="contact" class="contact justify-content-center">
			<div class="container">
				<form action="/ezibanking/writeqna.do" method="post" id="btn2">
					<div class="row justify-content-center">
						<!-- <div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">Table #02</h2>
					</div> -->
					
					<div class="row">
						<div class="col-md-12">
							<!-- <div class="table-wrap"> -->
							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th>NO</th>
										<th>TITLE</th>
										<th>DATE</th>
										<th>VIEWS</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<%-- 	<c:forEach var="board" items="${boardList}"> --%>
									<tr class="alert" role="alert">
										<th class="col-md-1" scope="row">${board.no}</th>
										<td class="col-md-8"><a
											href="getBoard.do?seq=${board.no}"> ${board.title}</a></td>
										<td class="col-md-2">${board.regDate}</td>
										<td class="col-md-1">${board.views}</td>

										<td><a href="#" class="close" data-dismiss="alert"
											aria-label="Close"> <span aria-hidden="true"><i
													class="fa fa-close"></i></span>
										</a></td>
									</tr>
									<%-- </c:forEach> --%>
									<!-- <tr class="alert" role="alert">
										<th scope="row">002</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td><a href="/cdn-cgi/l/email-protection"
											class="__cf_email__"
											data-cfemail="670d06040805130f08150913080927020a060e0b4904080a">[email&#160;protected]</a></td>
										<td><a href="#" class="close" data-dismiss="alert"
											aria-label="Close"> <span aria-hidden="true"><i
													class="fa fa-close"></i></span>
										</a></td>
									</tr>
									<tr class="alert" role="alert">
										<th scope="row">003</th>
										<td>Larry</td>
										<td>the Bird</td>
										<td><a href="/cdn-cgi/l/email-protection"
											class="__cf_email__"
											data-cfemail="711d100303081318031531141c10181d5f121e1c">[email&#160;protected]</a></td>
										<td><a href="#" class="close" data-dismiss="alert"
											aria-label="Close"> <span aria-hidden="true"><i
													class="fa fa-close"></i></span>
										</a></td>
									</tr>
									<tr class="alert" role="alert">
										<th scope="row">004</th>
										<td>John</td>
										<td>Doe</td>
										<td><a href="/cdn-cgi/l/email-protection"
											class="__cf_email__"
											data-cfemail="a2c8cdcaccc6cdc7e2c7cfc3cbce8cc1cdcf">[email&#160;protected]</a></td>
										<td><a href="#" class="close" data-dismiss="alert"
											aria-label="Close"> <span aria-hidden="true"><i
													class="fa fa-close"></i></span>
										</a></td>
									</tr>
									<tr class="alert" role="alert">
										<th scope="row">005</th>
										<td>Gary</td>
										<td>Bird</td>
										<td><a href="/cdn-cgi/l/email-protection"
											class="__cf_email__"
											data-cfemail="5b3c3a29223932293f1b3e363a323775383436">[email&#160;protected]</a></td>
										<td><a href="#" class="close" data-dismiss="alert"
											aria-label="Close"> <span aria-hidden="true"><i
													class="fa fa-close"></i></span>
										</a></td>
									</tr> -->
								</tbody>
							</table>
						</div>

					</div>
					<div class="hero2 justify-content-center" >
						<button type="submit" class="mybtn mx-auto">글쓰기</button>
					</div>
					</div>
				</form>
			</div>
			<!-- 	</div> -->
		</section>



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
</body>





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


</body>
</html>