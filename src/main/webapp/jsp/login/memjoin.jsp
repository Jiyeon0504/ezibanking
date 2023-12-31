<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<style>
.scrollable-box {
	max-height: 200px;
}

.btn-primary {
    background-color: #008374;
    }

#postbtn {
	background-color: #008374;
	color: #ffffff;
	border: 1px solid #fff;
}

/*
#zipcode[readonly], #address[readonly] {
background-color : #ffffff;
}
*/
</style>



<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function kakaopost() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.querySelector("#zipcode").value = data.zonecode;
				document.querySelector("#address").value = data.address
			}
		}).open();
	}
</script>
<script>
	function maskInput(input) {
		// 입력된 값 가져오기
		var value = input.value;

		// 입력값의 길이가 1 이상인 경우에만 실행
		if (value.length > 0) {
			// 입력값의 첫 번째 문자를 가져와서 숫자인지 확인
			var firstCharacter = value.charAt(0);
			if (!isNaN(firstCharacter)) {
				// 숫자인 경우에만 뒷자리를 ******로 대체
				var maskedValue = firstCharacter + "******";
				input.value = maskedValue;
			}
		}
	}
</script>

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
		<div class="breadcrumbs">
			<div class="page-header d-flex align-items-center">
				<div class="container position-relative">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6 text-center">
							<h2>회원가입</h2>
							<!--  <p>회원가입을 하시면 더욱 다양한 서비스를 이용하실 수 있습니다.</p> -->
						</div>
					</div>
				</div>
			</div>
			<nav>
				<div class="container">
					<ol>
						<li><a href="index.html">홈으로</a></li>
						<li>회원가입</li>
					</ol>
				</div>
			</nav>
		</div>
		<!-- End Breadcrumbs -->
		<section class="sample-page">
			<div class="container" data-aos="fade-up">
				<div class="form-group">
					<h5>이용약관 동의 (필수)</h5>
					<div class="scrollable-box">
						<textarea class="form-control" rows="5" readonly>제1조(목적) 이 약관은 OO저축은행(이하 “저축은행”이라 함)이 이용자에게 제공하는 오픈뱅킹 서비스(이하 “서비스”라 함)의 이용과 관련하여 저축은행과 이용자간의 기본적인 사항을 규정함을 목적으로 합니다. 제2조(용어의 정의) ①“오픈뱅킹 서비스”란 오픈뱅킹공동업무를 활용하여 저축은행이 이용자에게 제공하는
금융거래 관련 서비스를 총칭합니다. ②“이용자”란 금융거래를 위하여 본 약관에 의하여 저축은행과 체결한 계약에 따라 저축은행이 제공하는
서비스를 이용하는 자를 말합니다. ③“지급인”이란 자금을 주는 자를 말합니다. ④“수취인”이란 자금을 받는 자를 말합니다. ⑤“신청계좌”란 서비스 이용을 위해 연결하는 계좌로서 오픈뱅킹공동업무 등록이 가능한 다른 금융회사의
계좌를 말합니다. ⑥“입금계좌”란 서비스 이용하여 자금이 입금되는 계좌를 말합니다. ⑦“계좌이체”라 함은 지급인의 지급지시에 따라 저축은행이 지급인의 계좌에서 자금을 출금하여 같은 저축은행 또는 다른 금융회사의 계좌에 입금하는 것을 말합니다. ⑧“추심이체”라 함은 수취인의 추심지시에 따라 저축은행이 지급인의 계좌에서 자금을 출금하여 같은 저축은행 또는 다른 금융회사의 계좌(계정 포함)에 입금하는 것을 말합니다. ⑨“운영기관”이란 오픈뱅킹 공동업무를 운영·제공하는 사단법인 금융결제원을 말합니다. ⑩“오픈뱅킹 공동업무”란 저축은행이 다른 금융회사와 별도 제휴 없이 운영기관을 통하여 API형태로 운영· 제공하는 다음 각 호의 업무를 말합니다.
 1.“출금이체”란 저축은행이 출금에 동의한 이용자의 신청계좌에서 자금을 출금하여 저축은행의 수납계정
또는 계좌로 실시간 입금하는 업무를 말합니다.
 2.“입금이체”란 저축은행의 지급계정 또는 계좌에서 자금을 출금하여 수취인의 계좌로 실시간 입금하는
업무를 말합니다.
 3.“잔액조회”란 이용자가 저축은행이 제공하는 서비스를 통해 본인계좌의 잔액을 실시간 조회하는 업무를
말합니다.
 4.“거래내역조회”란 이용자가 저축은행이 제공하는 서비스를 통해 본인계좌의 거래내역을 실시간 조회하는
업무를 말합니다.
 5.“계좌실명조회”란 저축은행이 수취인 또는 출금이체 신청을 한 이용자 계좌의 정상여부 및 실명을 실시간
조회하는 업무를 말합니다. ⑪“모바일기기”란 LTE 및 5G 등 이동통신망을 이용할 수 있는 휴대폰, 스마트폰, 태블릿 PC등의 기기를 통칭합니다. ⑫“전용 어플리케이션”이란 서비스 이용을 위해 모바일기기에 설치된 저축은행이 제공하는 어플리케이션을 말합니다. ⑬“수수료”란 저축은행의 서비스를 이용하는 과정에서 저축은행이 정하는 기준에 따라 이용자에게 부과하는
비용을 말합니다. 제3조(약관의 변경) ①저축은행은 본 약관의 내용을 이용자가 쉽게 알 수 있도록 전용 어플리케이션 화면
내 또는 별도의 영업점 혹은 홈페이지에 게시하여 제공합니다.
 ②저축은행은 관계법령을 위배하지 않는 범위에서 본 약관을 개정할 수 있으며, 약관의 변경과 관련된
사항은 「전자금융거래기본약관」의 내용을 준용합니다.
제4조(약관의 우선순위) ①저축은행은 개별 서비스에 적용될 사항의 규정을 위해 개별약관을 사용하거나
이용정책을 구분하여 개별서비스를 운영할 수 있으며, 해당 내용이 상충되는 경우 개별서비스에 대한
개별약관이 우선 적용됩니다. ②본 약관에서 정하지 아니한 사항에 대해서는 전자금융거래법 등 관련법령과 전자금융감독규정 등 관련
외규를 우선 적용합니다. 제5조(이용계약의 체결) ①저축은행과 이용자 사이의 서비스 이용계약(이하 “이용계약”이라 함)은 이용자가
되고자 하는 자(이하 “가입신청자”라 함)가 저축은행이 정한 양식에 따라 가입신청을 하고 저축은행이
이에 대해 승낙함으로써 체결됩니다.
 ②이용계약의 대상은 만 14세 이상의 고객으로 한정합니다.
 ③가입신청자가 동의 의사를 저축은행에 전달하게 되면 본 약관에 동의하고 저축은행에 서비스 이용을
신청한 것으로 봅니다.
 ④저축은행은 제7조 제2항 각호의 어느 하나에 해당하는 경우 이를 승낙하지 않을 수 있습니다. 제6조(추심이체의 동의 및 철회) ①이용자는 관련 법령에 따라 저축은행이 제공하는 방식으로 추심이체의
출금 동의를 제공하여야 합니다. ②이용자는 저축은행의 거래지시에 따라 이용자의 계좌 원장에 출금기록이 기입되기 전까지는 저축은행에
대하여 전항의 규정에 따른 동의의 철회를 요청할 수 있습니다. ③이용자는 서비스에 연결된 출금계좌를 삭제하는 방법으로 출금이체 동의를 철회할 수 있습니다. 제7조(이용계약의 해지) ①이용자는 언제든지 이용계약 해지신청을 할 수 있으며, 저축은행은 관련 법령, 센터 이용규약 등이 정하는 바에 따라 즉시 처리하여야 합니다. ②저축은행은 이용자에게 다음 각 호의 어느 하나에 해당하는 사유가 발생하거나 확인된 경우 이용계약을
해지할 수 있습니다.
 1. 타인의 정보를 이용해 가입신청을 한 경우
 2. 허위의 정보를 기재하거나, 저축은행이 제시하는 내용을 기재하지 않은 경우
 3. 이용자가 서비스의 원활한 제공을 방해하거나 시도한 경우
 4. 기타 본 약관에 위배되거나 위법 또는 부당한 거래가 확인된 경우
③저축은행이 이용계약을 해지한 경우 이용자에게 해지사유를 밝혀 해지의사를 사전에 통지하며, 이용자는 이의를
신청할 수 있습니다. 제8조(이용자에 대한 통지) ①저축은행이 이용자에 대한 통지를 하는 경우 SMS, LMS, 이메일, 서면 등
가용한 수단을 활용하여 통지합니다. ②저축은행은 전체 이용자에 대한 통지를 하는 경우 홈페이지, 모바일 전용 어플리케이션 등에 게시함으로써 제1항의 통지에 갈음할 수 있습니다. 다만, 이용자의 권리 또는 의무에 중요한 영향을 미치는
사항에 대해서는 개별통지를 합니다. 제9조(서비스의 제공) ①제5조에 따라 저축은행이 가입신청자의 이용신청을 승낙함과 동시에 가입신청자는
제2조 제10항의 오픈뱅킹공동업무 이용에 동의한 이용자가 되며, 이때부터 저축은행은 신청계좌에 대해
본 약관이 정하는 개별서비스를 제공합니다. ② 저축은행은 본 약관이 정한 서비스 외에 추가적인 서비스를 제공하기 위하여 이용자에게 별도의 추가적인 약관 동의, 정보수집 및 이용 동의 등 절차의 이행을 요청할 수 있으며, 이러한 절차가 완료되지
않는 경우 이용자는 추가적인 서비스의 전부 또는 일부를 이용할 수 없습니다.
제10조(서비스의 종류) 저축은행이 이용자에게 제공하는 서비스의 종류는 다음과 같습니다.
 1. 계좌조회 : 신청계좌의 거래내역, 잔액 등을 조회하는 서비스(대상계좌는 운영기관에서 정함)
 2. 금융서비스 : 신청계좌에서 자금을 출금하여 이체, 상품신규 등 저축은행을 통해 금융거래를 이용하는
서비스
 3. 잔액모으기 : 다수의 신청계좌에서 저축은행의 본인 명의 입출금계좌로 자금을 입금하는 서비스
 4. 기타 저축은행이 정한 서비스
제11조(이체대상 및 한도) ①출금이체 및 입금이체를 이용한 서비스의 이체대상은 현금으로 합니다. ②출금이체를 이용한 서비스의 이용한도는 운영기관의 이용한도를 따릅니다. ③출금이체의 인출가능 예금잔액이 출금하려는 금액보다 부족할 경우 출금이 제한될 수 있습니다. 제12조(인증) 저축은행은 서비스의 종류 및 보안수준에 따라 별도로 인증수단을 적용할 수 있습니다. 제13조(서비스의 중단) ①서비스의 이용은 저축은행의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 00시10분부터 23시50분까지 제공을 원칙으로 합니다. ②다음 각 호의 어느 하나에 해당하는 경우 서비스의 전부 또는 일부를 중단할 수 있습니다.
 1. 운영기관의 서비스 점검기간
 2. 개별서비스 점검, 변경 등 개별서비스 운영에 관한 사항
 3. 정보통신설비의 보수점검, 증설, 교체, 이전 등 시스템 관리업무
 4. 정전, 제반 설비의 장애 또는 이용량의 폭주 등 정상적인 서비스 이용에 지장이 있는 경우
 5. 기타 천재지변, 폭동, 테러, 국가비상사태 등 불가항력적 사유가 있는 경우
 6. 운영기관의 오픈뱅킹 공동업무규약 및 시행세칙, 관련 법령, 정책 변화 등 서비스 운영상 상당한
이유가 있는 경우
③ 제2항에 따라 서비스의 제공을 일시적으로 중단하는 경우 저축은행은 사전에 서비스 중단을 공지합니다. 다만, 불가피하게 사전 공지를 할 수 없는 경우 저축은행은 이를 사후에 공지할 수 있습니다. 제14조(서비스의 제한) ①저축은행은 다음 각 호의 어느 하나에 해당하는 경우 서비스의 전부 또는 일부를
제한 할 수 있습니다.
 1. 압류, 가압류, 가처분 등 법적 위반 등으로 서비스 제공이 부적합할 경우
 2. 저축은행 및 센터에 사고신고가 접수된 경우
 3. 저축은행이 제공하는 서비스 이용방법에 의하지 아니하고 비정상적인 방법으로 서비스를 이용하거나
저축은행의 시스템에 접근하는 경우
 4. 이용자가 저축은행의 서비스 운영을 고의로 방해하는 경우
 5. 이용자가 이용계약을 해지하는 경우
 6. 기타 이용자의 불법적이거나 부당한 행위가 있는 경우
 ②제1항에 따라 서비스를 제한할 경우 저축은행은 사전에 개별통지를 합니다. 다만, 손해발생 가능성이
급박하여 사전통지가 불가능하거나 법령에서 정하고 있는 등 별도의 사유가 있는 경우에 한하여 제한적으로 사후통지를 할 수 있습니다. 제15조(수수료) ①저축은행은 서비스 이용에 따른 수수료를 부과할 수 있습니다.
 ②저축은행은 수수료에 관한 사항을 홈페이지나 영업점 등에 별도로 게시합니다.
 ③저축은행은 수수료에 관한 사항이 변경될 경우 제3조를 준용합니다.
제16조(준수사항) ①저축은행은 서비스가 안전하게 처리될 수 있도록 선량한 관리자로서 주의를 다하며, 관계법령에서 정한 경우를 제외하고는 고객 동의 없이 고객정보를 제3자에게 제공하거나 업무 목적 이외
누설 또는 이용하지 않습니다. ②이용자는 서비스의 이용과 관련하여 관계 법령, 약관, 세부이용지침, 서비스 이용안내 및 공지사항
등을 준수합니다. ③이용자는 다음 각 호의 어느 하나에 해당하는 경우 즉시 저축은행에 통보하여야 합니다.
 1. 자신의 명의가 도용되거나 제3자에게 부정하게 사용된 것을 인지한 경우
 2. 전용 어플리케이션을 이용중인 모바일기기의 분실, 도난
 3. 기타 거래절차상 고객만이 알고 있는 비밀을 요하는 사항이 누설되었음을 알게 된 경우
제17조(손해배상 및 면책) 저축은행은 전자금융거래법 및 전자금융거래기본약관 등 개별약관의 책임 및
면책사항을 준용합니다. 제18조(준거법 및 합의관할) ①이 약관의 해석․적용에 관하여는 대한민국법을 적용합니다.
 ②이 계약과 관련한 저축은행과 이용자간의 법적분쟁이 발생한 경우 관할법원은 민사소송법에서 정하는
바에 따릅니다. </textarea>
					</div>
					<br>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="termsCheckbox"
							required> <label class="form-check-label"
							for="termsCheckbox">이용약관에 동의합니다.</label>
					</div>
				</div>

				<div class="form-group">
					<br>
					<br>
					<h5>개인정보 수집 및 이용 동의 (필수)</h5>
					<div class="scrollable-box">
						<textarea class="form-control" rows="5" readonly>본 업체 사이트는 회원의 개인정보보호를 소중하게 생각하고, 회원의 개인정보를 보호하기 위하여 항상 최선을 다해 노력하고 있습니다. 
1) 회사는 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」을 비롯한 모든 개인정보보호 관련 법률규정을 준수하고 있으며, 관련 법령에 의거한 개인정보처리방침을 정하여 이용자 권익 보호에 최선을 다하고 있습니다.
2) 회사는 「개인정보처리방침」을 제정하여 이를 준수하고 있으며, 이를 인터넷사이트 및 모바일 어플리케이션에 공개하여 이용자가 언제나 용이하게 열람할 수 있도록 하고 있습니다.
3) 회사는 「개인정보처리방침」을 통하여 귀하께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
4) 회사는 「개인정보처리방침」을 홈페이지 첫 화면 하단에 공개함으로써 귀하께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다.
5) 회사는  「개인정보처리방침」을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.

2. 개인정보 수집에 대한 동의

귀하께서 본 사이트의 개인정보보호방침 또는 이용약관의 내용에 대해 「동의 한다」버튼 또는 「동의하지 않는다」버튼을 클릭할 수 있는 절차를 마련하여, 「동의 한다」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다.

3. 개인정보의 수집 및 이용목적

본 사이트는 다음과 같은 목적을 위하여 개인정보를 수집하고 있습니다.
서비스 제공을 위한 계약의 성립 : 본인식별 및 본인의사 확인 등
서비스의 이행 : 상품배송 및 대금결제
회원 관리 : 회원제 서비스 이용에 따른 본인확인, 개인 식별, 연령확인, 불만처리 등 민원처리
기타 새로운 서비스, 신상품이나 이벤트 정보 안내
단, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 등)는 수집하지 않습니다.

4. 수집하는 개인정보 항목

본 사이트는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다. 
1) 개인정보 수집방법 : 홈페이지(회원가입)
2) 수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 전화번호 , 주소 , 휴대전화번호 , 이메일 , 주민등록번호 , 접속 로그 , 접속 IP 정보 , 결제기록


5. 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항

본 사이트는 귀하에 대한 정보를 저장하고 수시로 찾아내는 '쿠키(cookie)'를 사용합니다. 쿠키는 웹사이트가 귀하의 컴퓨터 브라우저(넷스케이프, 인터넷 익스플로러 등)로 전송하는 소량의 정보입니다. 귀하께서 웹사이트에 접속을 하면 본 사이트의 컴퓨터는 귀하의 브라우저에 있는 쿠키의 내용을 읽고, 귀하의 추가정보를 귀하의 컴퓨터에서 찾아 접속에 따른 성명 등의 추가 입력 없이 서비스를 제공할 수 있습니다.
1) 쿠키는 귀하의 컴퓨터는 식별하지만 귀하를 개인적으로 식별하지는 않습니다. 또한 귀하는 쿠키에 대한 선택권이 있습니다. 웹브라우저의 옵션을 조정함으로써 모든 쿠키를 다 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있는 선택권을 가질 수 있습니다.
2) 쿠키 등 사용 목적 : 이용자의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공
3) 쿠키 설정 거부 방법 : 쿠키 설정을 거부하는 방법으로는 귀하가 사용하는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. 설정방법 예시 : 인터넷 익스플로어의 경우 → 웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보
단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.

6 목적 외 사용 및 제3자에 대한 제공

본 사이트는 귀하의 개인정보를 "개인정보의 수집목적 및 이용목적"에서 고지한 범위 내에서 사용하며, 동 범위를 초과하여 이용하거나 타인 또는 타 기업·기관에 제공하지 않습니다.
그러나 보다 나은 서비스 제공을 위하여 귀하의 개인정보를 업체 자회사 또는 제휴사에게 제공하거나, 업체 자회사 또는 제휴사와 공유할 수 있습니다. 개인정보를 제공하거나 공유할 경우에는 사전에 귀하께 업체 자회사 그리고 제휴사가 누구인지, 제공 또는 공유되는 개인정보항목이 무엇인지, 왜 그러한 개인정보가 제공되거나 공유되어야 하는지, 그리고 언제까지 어떻게 보호·관리되는지에 대해 개별적으로 전자우편 및 서면을 통해 고지하여 동의를 구하는 절차를 거치게 되며, 귀하께서 동의하지 않는 경우에는 업체 자회사 그리고 제휴사에게 제공하거나 공유하지 않습니다. 또한 이용자의 개인정보를 원칙적으로 외부에 제공하지 않으나, 아래의 경우에는 예외로 합니다.
1) 이용자들이 사전에 동의한 경우
2) 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우

7. 개인정보의 열람 및 정정

귀하는 언제든지 등록되어 있는 귀하의 개인정보를 열람하거나 정정하실 수 있습니다. 개인정보 열람 및 정정을 하고자 할 경우에는 "회원정보수정"을 클릭하여 직접 열람 또는 정정하거나, 개인정보 최고관리책임자에게 E-mail로 연락하시면 조치하겠습니다.
귀하가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 이용하지 않습니다.

8. 개인정보 수집, 이용, 제공에 대한 동의철회

회원가입 등을 통해 개인정보의 수집, 이용, 제공에 대해 귀하께서 동의하신 내용을 귀하는 언제든지 철회하실 수 있습니다. 동의철회는 "마이페이지"의 "회원탈퇴(동의철회)"를 클릭하거나 개인정보관리책임자에게 E-mail등으로 연락하시면 즉시 개인정보의 삭제 등 필요한 조치를 하겠습니다.
본 사이트는 개인정보의 수집에 대한 회원탈퇴(동의철회)를 개인정보 수집시와 동등한 방법 및 절차로 행사할 수 있도록 필요한 조치를 하겠습니다.

9. 개인정보의 보유 및 이용기간

원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.
1) 보존 항목 : 회원가입정보(로그인ID, 이름, 별명)
2) 보존 근거 : 회원 탈퇴 시 다른 회원이 기존 회원아이디로 재가입하여 활동하지 못하도록 하기 위함
3) 보존 기간 : 영구
그리고 상법 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 거래 및 회원정보를 보관합니다.
⚪보존 항목 : 계약 또는 청약철회 기록, 대금 결제 및 재화공급 기록, 불만 또는 분쟁처리 기록
⚪보존 근거 : 전자상거래등에서의 소비자보호에 관한 법률 제6조 거래기록의 보존
⚪보존 기간 : 계약 또는 청약철회 기록(5년), 대금 결제 및 재화공급 기록(5년), 불만 또는 분쟁처리 기록(3년), 위 보유기간에도 불구하고 계속 보유하여야 할 필요가 있을 경우에는 귀하의 동의를 받겠습니다.
⚪회원이 1년간 서비스 이용기록이 없는 경우[정보통신망 이용촉진 및 정보보호 등에 관한 법률] 제 29조 '개인정보 유효 기간제'에 따라 회원에게 사전 통지하고 별도로 분리하여 저장합니다. 
4) 개인정보의 국외 보관에 대한 내용
 회사는 이용자로부터 취득 또는 생성한 개인정보를 미리내가 보유하고 있는 데이터베이스 (물리적보관소: 한국)에 저장합니다. 미리내는 해당 서버의 물리적인 관리만을 행하고, 원칙적으로 회원님의 개인정보에 접근하지 않습니다. 


⚪이전항목: 서비스 이용기록 또는 수집된 개인정보
⚪이전국가: 한국
⚪이전일시 및 방법: 전산 서버 수탁계약 이후 서비스 이용 시점에 네트워크를 통한 전송
⚪개인정보 보유 및 이용기간: 회원탈퇴시 혹은 위탁계약 종료시까지 

10. 개인정보의 파기절차 및 방법

본 사이트는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.
파기절차 : 귀하가 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.
파기방법 : 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.

11. 아동의 개인정보 보호

본 사이트는 만14세 미만 아동의 개인정보를 수집하는 경우 법정대리인의 동의를 받습니다.
만14세 미만 아동의 법정대리인은 아동의 개인정보의 열람, 정정, 동의철회를 요청할 수 있으며, 이러한 요청이 있을 경우 본 사이트는 지체 없이 필요한 조치를 취합니다.

12. 개인정보 보호를 위한 기술적 대책

본 사이트는 귀하의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.
귀하의 개인정보는 비밀번호에 의해 보호되며, 파일 및 전송 데이터를 암호화하거나 파일 잠금기능(Lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 보호되고 있습니다.
본 사이트는 백신프로그램을 이용하여 컴퓨터바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다. 백신프로그램은 주기적으로 업데이트되며 갑작스런 바이러스가 출현할 경우 백신이 나오는 즉시 이를 제공함으로써 개인정보가 침해되는 것을 방지하고 있습니다.
해킹 등에 의해 귀하의 개인정보가 유출되는 것을 방지하기 위해, 외부로부터의 침입을 차단하는 장치를 이용하고 있습니다.

13. 개인정보의 위탁처리
본 사이트는 서비스 향상을 위해서 귀하의 개인정보를 외부에 위탁하여 처리할 수 있습니다.
개인정보의 처리를 위탁하는 경우에는 미리 그 사실을 귀하에게 고지하겠습니다.
개인정보의 처리를 위탁하는 경우에는 위탁계약 등을 통하여 서비스제공자의 개인정보보호 관련 지시 엄수, 개인정보에 관한 비밀유지, 제3자 제공의 금지 및 사고시의 책임부담 등을 명확히 규정하고 당해 계약내용을 서면 또는 전자적으로 보관하겠습니다.

14. 의견수렴 및 불만처리
본 사이트는 개인정보보호와 관련하여 귀하가 의견과 불만을 제기할 수 있는 창구를 개설하고 있습니다. 개인정보와 관련한 불만이 있으신 분은 본 사이트의 개인정보 최고 관리책임자에게 의견을 주시면 접수 즉시 조치하여 처리결과를 통보해 드립니다.
1) 개인정보 최고 관리책임자는 회사의 대표가 직접 맡아서 개인정보에 대한 강조를 하고 있습니다. 개인정보를 보호하고 유출을 방지하는 책임자로서 이용자가 안심하고 회사가 제공하는 서비스를 이용할 수 있도록 도와드리며, 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하여 사고가 발생할 시에는 이에 관한 책임을 집니다.
2) 기술적인 보완조치를 취하였음에도 불구하고 악의적인 해킹 등 기본적인 네트워크상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 멸실, 이용자가 작성한 게시물에 의한 각종 분쟁 등에 관해서는, 본 사이트 회사는 책임이 없습니다.
3) 회사는 정보통신망 이용촉진 및 정보보호 등에 관한 법률에서 규정한 관리책임자를 다음과 같이 지정합니다.
개인정보 최고 관리책임자 성명 : 
전화번호 :
이메일 : 

또는 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.
개인분쟁조정위원회 (www.1336.or.kr / 1336)
정보보호마크인증위원회 (www.eprivacy.or.kr / 02-580-0533~4)
대검찰청 인터넷범죄수사센터 (icic.sppo.go.kr / 02-3480-3600)
경찰청 사이버테러대응센터 (www.ctrc.go.kr / 02-392-0330)

15. 부 칙(시행일) 

현 개인정보처리방침은 2017년 9월 22일에 제정되었으며, 정부 및 회사의 정책 또는 보안기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 경우에는 개정 최소 7일 전부터 ‘공지사항’란을 통해 고지하며, 본 정책은 시행 일자에 시행됩니다.
1) 공고일자 : 2023년 06월 01일
2) 시행일자 : 2023년 06월 01일 </textarea>
					</div>
					<br>
					<div class="form-check">
						<input class="form-check-input" type="checkbox"
							id="privacyCheckbox" required> <label
							class="form-check-label" for="privacyCheckbox">개인정보 수집 및
							이용에 동의합니다.</label>
					</div>
				</div>




				<div class="container mt-3">
					<form action="insertUserProcess.do" method="POST">
						<div class="row jumbotron box8">
							<div class="col-sm-12 mx-t3 mb-4">
								<h2 class="text-center text-info"></h2>
								<br>
							</div>
							<div class="col-sm-6 form-group">
								<label for="name-f">ID</label> <input type="text"
									class="form-control" name="userid" id="userid"
									placeholder="4~16자 소문자영문, 숫자" required>
							</div>
							<div class="col-sm-6 form-group">
								<label for="name-l">이름</label> <input type="text"
									class="form-control" name="username" id="username"
									placeholder="이름을 입력하세요" required>
							</div>
							<div class="col-sm-6 form-group">
								<label for="email">비밀번호</label> <input type="password"
									class="form-control" name="userpassword" id="userpassword"
									placeholder="비밀번호를 입력하세요" required>
							</div>
							<div class="col-sm-6 form-group">
								<label for="address-1">휴대전화</label> <input type="text"
									class="form-control" name="phone" id="phone"
									placeholder=" ' - ' 빼고 입력하세요" required>

							</div>
							<div class="col-sm-6 form-group">
								<label for="address-2">비밀번호 확인</label> <input type="password"
									class="form-control" name="checkpassword" id="checkpassword"
									placeholder="비밀번호를 한번 더 입력해주세요" required>
							</div>
							<div class="col-sm-3 form-group">
								<label for="Date">생년월일</label> <input type="text" name="birth"
									class="form-control" id="birth" placeholder="앞자리" required>
							</div>

							<div class="col-sm-3 form-group">
								<label for="Date"></label> <input type="password" name="gender"
									class="form-control" id="gender" placeholder="뒷자리" required>
							</div>

							<div class="col-sm-3 form-group">
								<label for="Date"> 우편번호</label> <input type="text"
									name="zipcode" class="form-control" id="zipcode"
									placeholder="우편번호" readonly>
							</div>
							<div class="col-sm-2 form-group">
								<label for="Date"></label> <input type="button" name="dob"
									class="form-control" id="postbtn" value='우편번호찾기'
									onclick="kakaopost()">
							</div>

							<div class="col-sm-1 form-group">
								<label for="Date"></label>
							</div>

							<div class="col-sm-6 form-group">
								<label for="pass">email</label> <input type="text"
									name="email" class="form-control" id="email"
									placeholder="email을 입력해주세요" required>
							</div>

							<div class="col-sm-6 form-group">
								<label for="pass2">주소</label> <input type="text" name="address"
									class="form-control" id="address" placeholder="주소를 입력하세요"
									readonly>
							</div>


							<div class="col-sm-6 form-group">
								<label for="pass2">상세주소</label> <input type="text"
									name="address2" class="form-control" id="address2"
									placeholder="나머지 상세주소를 입력하세요" required>
							</div>


							<div class="col-sm-12">
								<input type="checkbox" class="form-check d-inline" id="allAgreeCheckbox"
									required><label for="chb" class="form-check-label">&nbsp;I
									accept all terms and conditions. </label>
							</div>

							<div class="col-sm-12 form-group mb-0 text-center">
								<!-- <button class="btn btn-primary" id="joinbtn">Submit</button> -->
								<button style="background-color: #008374; border: 0px;" class="btn btn-primary" id="joinButton" onclick="return false;" disabled>Submit</button>
							</div>

						</div>
					</form>
				</div>
				<br>
				<br>
				<br>
				</div>
				
		</section>

	</main>
	<!-- End #main -->
	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<jsp:include page="/jsp/include/footer.jsp" />
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
	<script>




// Function to handle the individual checkboxes
function handleIndividualCheckbox() {
  var termsCheckbox = document.getElementById("termsCheckbox");
  var privacyCheckbox = document.getElementById("privacyCheckbox");
  var joinButton = document.getElementById("joinButton");
  

  if (termsCheckbox.checked && privacyCheckbox.checked) {
    joinButton.removeAttribute("disabled");
    joinButton.onclick = null; // Remove the click event handler
  } else {
    joinButton.setAttribute("disabled", "disabled");
    joinButton.onclick = function() { return false; }; // Disable click events
  }
}

// Event listener for the "회원가입 약관에 모두 동의합니다" checkbox


// Event listeners for the individual checkboxes
document.getElementById("termsCheckbox").addEventListener("change", handleIndividualCheckbox);
document.getElementById("privacyCheckbox").addEventListener("change", handleIndividualCheckbox);

// Initial check for the individual checkboxes
handleIndividualCheckbox();
</script>

</body>

</html>