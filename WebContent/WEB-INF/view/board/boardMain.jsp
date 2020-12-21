<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html lang="ko">
<style>
@import url("/css/recs.css");
</style>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/img/core-img/favicon.ico">
<link rel="stylesheet" href="/css/style.css?" type="text/css">



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


<title>자 유 게 시 판</title>
</head>



<body style="font-family: myfont">
	<!--  헤더부분 -->
	<c:import url="/WEB-INF/header.jsp"></c:import>

	<!-- 메인 내용 -->
	<div class="container p-3 my-3">


		<!--메뉴 고르기 & 최근 레시피 기능  -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">작성자</th>
							<th scope="col">제목</th>
							<th scope="col">날짜</th>

							<th scope="col">조회수</th>
							<th scope="col">댓글수</th>
						</tr>
					</thead>

					<tbody>


						<c:forEach var="n" items="${list}">

							<tr>

								<td>${n.b_no}</td>
								<td>${n.mem_name}</td>
								<td><a href="getBoard?no=${n.b_no}">${n.b_title}</a></td>
								<td>${n.b_date}</td>
								<td>${n.b_view}</td>
								<td>${n.b_commview}</td>

							</tr>
						</c:forEach>




					</tbody>

				</table>

			</div>

		</div>



		<div class="row">
			<div class="col-md-12" style="text-align: right;">


				<input type="button" value="글쓰기" onclick="Insertform()" id="write"
					style="width: 5%">

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
<script>
function Insertform() {
	var Userid = '<%=(String)session.getAttribute("Userid") %>';
	 if(Userid == "null" ) {
		 alert("로그인 후 이용가능합니다.");
	location.href = '/login';
	 }
	 
	 else {
		
		 location.href = '/insertBoard';
	 }
	}

</script>
