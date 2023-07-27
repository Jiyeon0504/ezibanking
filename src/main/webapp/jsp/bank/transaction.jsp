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
							<h2>자금이체</h2>
							<p>ezi 은행 즉시 이체</p>
						</div>
					</div>
				</div>
			</div>
			<nav>
				<div class="container">
					<ol>
						<li><a href="index.html">홈으로</a></li>
						<li>자금이체</li>
					</ol>
				</div>
			</nav>
		</div>
		<!-- End Breadcrumbs -->





		<!-- ======= Our Services Section ======= -->

		<section id="pricing" class="pricing sections-bg">
			<div class="container" data-aos="fade-up">

				<div id="container" class="vh-80">
					<div class="container py-5 h-80">


						<form id="createAccountForm" action="transactionProcess.do"
							class="createAccount" method="post">

							<div class="container" class="vh-80">

								<div class="col-lg-8">
									<h5 class="card-title">즉시이체</h5>

									<div class="form-outline mb-4">
									<label
												class="form-label" for="form1Example13"> 이름</label>
											<input type="text" name="userName"
												value="${loginUser.user_name}"
												class="form-control form-control-lg" disabled/> 
										</div>

									<div id="dinputBox">

										<%-- <div class="form-group">
											<label for="accountList" >출금계좌</label>
											<input type="text" name="acc_no"
												value="${selectedAcc}" readonly="readonly" disabled
												class="form-control">
											<P> 현재잔액 : ${selectedBal} 원<p>
										</div> --%>


										<div class="form-outline mb-4">
											<label for="accountList">계좌 선택 </label> <select name="acc_no"
												class="form-control form-control-lg">

												<option disabled selected>출금계좌를 선택하세요</option>
												<c:forEach items="${accountList}" var="account">
													<option value="${account.account}"
														<c:if test="${account.account eq selectedAcc}"> selected </c:if>>${account.item_name}(${account.account})
														현재잔액 : ${account.balance} 원</option>

													<!-- <option value="적금">적금</option> <option
										value="예금">예금</option> -->
												</c:forEach>
											</select>
										</div>

										<div class="form-outline mb-4">
											<label
												class="form-label" for="form1Example23"> 계좌비밀번호</label>
												<input type="password" name="ac_password" id="ac_password"
												class="form-control
										form-control-lg" /> 
										</div>
										<div class="form-outline mb-4">
											<label for="rc_bank">보낼은행</label> <select name="rc_bankcode"
												class="form-control form-control-lg">
												<c:forEach items="${bankList}" var="bank">
													<option value="${bank.bankcode}">${bank.bankname}(${bank.bankcode})</option>
												</c:forEach>
											</select>
										</div>
										<div class="form-outline mb-4">
											<label class="form-label" for="form1Example13">받는 분
												계좌번호</label> <input type="text" name="rc_account"
												class="form-control
										form-control-lg" />
										</div>
										<div class="form-outline mb-4">
											<label
												class="form-label" for="form1Example13">이체 금액</label>
												<input type="text" name="t_amount"
												class="form-control form-control-lg" /> 
										</div>
										<div class="form-outline mb-4">
											<input type="text" name="t_comment"
												value=""
												class="form-control form-control-lg" /> <label
												class="form-label" for="form1Example13"> 내 통장 표시 </label>
										</div>
										<div class="form-outline mb-4">
											<input type="hidden" name="balance"
												value="${account.balance}"
												class="form-control form-control-lg" /> <label
												class="form-label" for="form1Example13"></label>
										</div>

									</div>
									
									<button type="submit" class="btn btn-primary">이체</button>

								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
		<!-- End Pricing Section -->

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