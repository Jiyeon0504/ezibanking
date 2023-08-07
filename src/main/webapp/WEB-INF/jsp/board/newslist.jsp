<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/ezibanking/css/table.css">

<style>
.table tbody td .close span {
    font-size: 12px;
    color: #dc3545; }

</style>
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
							<h2>공지사항</h2>
							<!--  <p>회원가입을 하시면 더욱 다양한 서비스를 이용하실 수 있습니다.</p> -->
						</div>
					</div>
				</div>
			</div>
			<nav>
				<div class="container">
					<ol>
						<li><a href="index.html">홈으로</a></li>
						<li>금융뉴스</li>
					</ol>
				</div>
			</nav>
		</div>

		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center">
					<!-- <div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">Table #02</h2>
					</div> -->
				</div>
				<div class="row">
					<div class="col-md-12">
						<!-- <div class="table-wrap"> -->
						<table class="table">
						<thead class="thead-dark">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>등록일</th>
								<th></th>
							</tr>
							</thead>
							<c:forEach items="${ boardList }" var="board">
								<tr>
									<td>${ board.no }</td>
									<td><a
										href="${pageContext.request.contextPath }/board/${ board.no }">${ board.title } <c:if test="${ board.replyCnt ne 0 }">
					[${ board.replyCnt }]
				</c:if></a>

									</td>
									<td>${ board.writer }</td>
									<td>${ board.regDate }</td>
									<td><a href="" class="close" data-dismiss="alert"
										aria-label="Close"> <span aria-hidden="true"><i
												class="fa fa-close"></i></span>
									</a></td>
							</c:forEach>
						</table>
						<a href="${ pageContext.request.contextPath }/board/write">글쓰기</a>



						<!--  -->

					</div>
				</div>
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






		<!-- ======= Footer ======= -->
		<footer id="footer" class="footer">
			<jsp:include page="/jsp/include/footer.jsp" />
		</footer>

		<a href="#"
			class="scroll-top d-flex align-items-center justify-content-center"><i
			class="bi bi-arrow-up-short"></i></a>

		<div id="preloader"></div>

		
	</main>
</body>
</html>