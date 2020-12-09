<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ page import="project.BoardDAO"%>
<%@ page import="project.BoardVO"%>
<%@ page import="java.util.List"%>


<%
   request.setCharacterEncoding("UTF-8");

%>

<!DOCTYPE html>
<html lang="ko">
<style>
@import url("css/recs.css");
</style>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css" type="text/css">
	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>

<title>오늘 뭐 먹지 ?</title>
</head>



<body style="font-family: myfont";>
	<!-- 네비 바   (헤더) -->
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<a class="navbar-brand" href="main.html">
				<div class="firstlogo" style="width: 100px;"></div>
			</a> <input id="myInput" type="text" placeholder="검색하기"
				style="width: 80%;" autofocus />
			<!-- 검색된 레시피로 이동 -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="signup.jsp">회원가입</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">로그인</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="BoardMain.jsp">자유게시판</a>
				</li>
			</ul>
		</div>
	</nav>
	<!-- 로고 부분  (헤더) -->
	<c:import url="/WEB-INF/header.jsp"></c:import>
	<!-- 메인 내용 -->
	<div class="container p-3 my-3">
		<!-- 검색 하기 기능 -->

		<!--메뉴 고르기 & 최근 레시피 기능  -->
		<div class="row">
			<div class="col-md-12">
				<form action="InsertBoard.jsp?name=multipart" method="post" />
				<input type = "hidden" name ="a" value = "write">
				<table class="table table-hover" style="text-align: center;">

					<thead>
						<tr>
							<td><input type="text" placeholder="제목을 입력해주세요."
								name="inp_title" ></td>
						</tr>
					</thead>
					<tbody>
						<td><textarea aria-setsize="2000" cols = "50" rows = "10" placeholder="내용을 작성하세요."
								name="inp_contetns" ></textarea></td>

					</tbody>


				</table>
			</div>


		</div>

		<div style="text-align: right;">
			<input type="submit" value="완료">
		</div>
		</form>
	</div>

	<div class="footer text-center" style="margin-top: auto">
		<p>문의사항 : gunlee1226@gmail.com</p>
		<P>주소 : 서울 특별시 구로구 디지털로 29 대륭포스트타워 3차</P>
		<p>11층 1109호 한국직업전문학교</p>
	</div>
</body>

</html>
<script>

</script>