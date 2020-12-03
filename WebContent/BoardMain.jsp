<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="project.BoardDAO"%>
<%@ page import="project.BoardVO"%>
<%@ page import="java.util.List"%>


<%
   request.setCharacterEncoding("UTF-8");
BoardDAO dao = new BoardDAO();
List<BoardVO> list = dao.getList();
%>



<!DOCTYPE html>
<html lang="ko">
<style>
@import url("css/recs.css");
</style>

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


<title>자 유 게 시 판</title>
</head>



<body style="font-family: myfont">

	<!-- 네비 바   (헤더) -->
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<a class="navbar-brand" href="main.html">
				<div class="firstlogo" style="width: 100px;"></div>
			</a> <input id="myInput" type="text" placeholder="검색하기"
				style="width: 80%;" autofocus />
			<!-- 검색된 레시피로 이동 -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="member.html">회원가입</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="????.html">로그인</a>
				</li>
				<form action="BoardMain.jsp" method="post">
				<li class="nav-item"><a class="nav-link" >
				<input type ="submit" value="자게">자유게시판</a>
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
					<% 
      for(BoardVO vo : list) {
   %>	
						<tr>
							<td><%=vo.getB_no() %> </td>
							<td><%=vo.getMEM_NAME() %></td>
							<td><%=vo.getB_title() %></td>
							<td><%=vo.getB_date() %></td>
							<td><%=vo.getB_view() %></td>
							<td><%=vo.getB_commview() %></td>

						</tr>
	<%      
      }					
   %>

					</tbody>

				</table>

			</div>

		</div>

		<div class="row">
			<div class="col-md-12" style="text-align: right;">
				<form action="InsertBoard.jsp" method="POST">
					<input type="submit" name="binsert" value="글쓰기">
				</form>
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
</script> 