<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/ezibanking/css/table.css">
<script>

	// 댓글리스트 조회(게시판번호)
	let getReplyList = function() {
		$.ajax({
			url: '${pageContext.request.contextPath}/reply/${board.no}',
			type: 'get',
			success: function(result) {
	//			let list = JSON.parse(result)
				
				$('#replyList').empty()
				
				$(result).each(function() {
					console.log(this)
					
					let str = ''
					str += '<hr>'
					str += '<div>'
					str += '<strong>' + this.content + '</strong>'
					str += '(' + this.writer + ')'
					str += '&nbsp;&nbsp; ' + this.regDate + '&nbsp;&nbsp; '
					str += '<button id=' + this.no + '>삭제</button>'
					str += '</div>'
					
					$('#replyList').append(str)
				})
				
			}, error: function() {
				alert('실패')
			}
		})
	}
	
	$(document).ready(function() {
		getReplyList()
	})

	$(document).ready(function() {
		$('#replyAddBtn').click(function() {
			let content = document.rform.content.value
			let writer = document.rform.writer.value
			
			// http://localhost:8080/Mission-Spring/reply
			//				?content=어머어머&writer=hong&boardNo=42
			$.ajax({
				url: '${pageContext.request.contextPath}/reply',
				type: 'post',
				data: {
					content: content,
					writer: writer,
					boardNo: ${board.no}
				}, success: function() {
					document.rform.content.value = ''
					document.rform.writer.value = ''
					getReplyList()
				}, error: function() {
					alert('실패')
				}
			})
		})
	})
</script>

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
						<li>공지사항</li>
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
						<h2>게시판 상세 페이지</h2>

		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>등록일</th>
			</tr>
			<tr>
				<td>${ board.no }</td>
				<td>${ board.title }</td>
				<td>${ board.writer }</td>
				<td>${ board.regDate }</td>
		</table>
		${ board.content } <br>
		<br>
		<button
			onclick="location.href='${pageContext.request.contextPath}/board'">
			목록</button>
		<button
			onclick="location.href='${pageContext.request.contextPath}/board'">
			수정</button>
		<button
			onclick="location.href='${pageContext.request.contextPath}/board'">
			삭제</button>

		<br>
		<hr>
		<!-- 댓글관련 -->

		<form name="rform">
			댓글 : <input type="text" name="content" /> 이름 : <input type="text"
				name="writer" />
			<button type="button" id="replyAddBtn">댓글추가</button>
			<div id="replyList"></div>

		</form>


	</div>



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