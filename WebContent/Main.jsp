<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>밥먹고 뭐 먹지?</title>
</head>


<body style="font-family: NotoSans-Medium">
	<!-- 네비 바   (헤더) -->
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<a class="navbar-brand" href="main.html">
				<div class="firstlogo" style="width: 100px;"></div>
			</a> <input id="myInput" type="text" placeholder="검색하기"
				style="width: 80%;" autofocus />
				
			<!-- 검색된 레시피로 이동 -->
			<ul class="navbar-nav">
				<form action="signupform.jsp" method="post">
					<li class="nav-item"><a class="nav-link" href="signupform.jsp">회원가입</a>
					</li>
				</form>
				<form action="loginform.jsp" method="post">
					<li class="nav-item"><a class="nav-link" href="loginform.jsp">로그인</a>
					</li>
				</form>
			</ul>
			
		</div>
	</nav>
	<!-- 로고 부분  (헤더) -->
	<a class="nav-link" href="main.html">
		<h1 class="head">오늘 뭐 먹지 ?</h1>
	</a>




	<!-- 메인 내용 -->
	<div class="container p-3 my-3">
		<!-- 검색 하기 기능 -->
		<div class="row">
			<div class="col-md-8"></div>

		</div>
		<!--메뉴 고르기 & 최근 레시피 기능  -->
		<div class="row">
			<div class="col-md-4">
				<h3 style="text-align: center;">
					상황별 사이드 고르기
					</h1>
					<a href="situation.html">
						<div class="image1"></div>
						<p>이미지 클릭시 상황별 사이드 고르기</p>
					</a>
			</div>
			<div class="col-md-4">
				<h3 style="text-align: center;">
					랜덤 추천
					</h1>
					<a href="????.html">
						<div class="image1"></div>
						<p>랜덤 추천 이미지 누르면 랜덤 추천 페이지로 이동하기</p>
					</a>
			</div>
			<div class="col-md-4">
				<h3 style="text-align: center;">
					정하지 못함
					</h1>
					<a href="????.html">
						<div class="image1"></div>
						<p>누르면 해당 이미지로 이동</p>
					</a>
			</div>
		</div>

	</div>

	<div class="footer text-center" style="margin-top: auto">
		<p>문의사항 : gunlee1226@gmail.com</p>
		<P>주소 : 서울 특별시 구로구 디지털로 29 대륭포스트타워 3차</P>
		<p>11층 1109호 한국직업전문학교</p>
	</div>
</body>

</html>