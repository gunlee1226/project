<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<!DOCTYPE html>
<html lang="ko">
<style>
@import url("css/recs.css");
</style>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="img/core-img/favicon.ico">
<link rel="stylesheet" href="css/style.css?" type="text/css">



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
				<table class="table">
					<tr>
						<th>제목</th>

						<td>${vo.b_title }</td>
					</tr>
					<tr>
						<th>날짜</th>
						<td>${vo.b_date}</td>

					</tr>
					<tr>
						<th>작성자</th>
						<td>${vo.mem_name}</td>
					</tr>

					<tr>
						<th>조회수</th>
						<td></td>

					</tr>

					<tr>
						<th>내용</th>
						<td>${vo.b_contents}</td>
					</tr>
				</table>


			</div>

			</div>

			
			<div class="row">
				<div class="col-md-12" style="text-align: right;">


					<c:set var="mem_code" value="${vo.mem_code}" />
					<c:choose>
						<c:when test="${Usercode == null}">
							<input type="button" value="로그인"
								onclick="location.href='/login'" style="width: 5%">
						</c:when>

						<c:when test="${Usercode == vo.mem_code}">
							
							<a href="boardUpdate?no=${no}"> <input type="button"
								value="수정하기" style="width: 8%">
							</a>
							<a href="boardDelete?no=${no}"> <input type="button"
								value="삭제하" style="width: 8%">
								
							
							</a>
						</c:when>
					</c:choose>
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
	var Userid = '<%=(String) session.getAttribute("Userid")%>
	';
		if (Userid == "null") {
			alert("로그인 후 이용가능합니다.");
			location.href = '/login';
		}

		else {

			location.href = '/insertBoard';
		}
	}
</script>

