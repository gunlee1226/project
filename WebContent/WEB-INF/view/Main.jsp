<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="project.RecipesDAO"%>
<%@ page import="project.RecipesVO"%>
<%@ page import="java.util.List"%>
<%
	request.setCharacterEncoding("UTF-8");
RecipesDAO rdao = new RecipesDAO();
List<RecipesVO> rlist = rdao.getRecipes();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>밥먹고 뭐 먹지?</title>
<link rel="icon" href="img/core-img/favicon.ico">
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

</head>


<body>
	<!-- Preloader -->
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="preloader-content">
			<h3>Cooking in progress..</h3>
			<div id="cooking">
				<div class="bubble"></div>
				<div class="bubble"></div>
				<div class="bubble"></div>
				<div class="bubble"></div>
				<div class="bubble"></div>
				<div id="area">
					<div id="sides">
						<div id="pan"></div>
						<div id="handle"></div>
					</div>
					<div id="pancake">
						<div id="pastry"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- header -->
	<c:import url="/WEB-INF/header.jsp"></c:import>

	<!-- ##### Treading Post Area Start ##### -->
	<div class="treading-post-area" id="treadingPost">
		<div class="close-icon">
			<i class="fa fa-times"></i>
		</div>

		<h4>Treading Post</h4>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<img src="img/bg-img/9.jpg" alt="">
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<img src="img/bg-img/10.jpg" alt="">
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<img src="img/bg-img/11.jpg" alt="">
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<img src="img/bg-img/9.jpg" alt="">
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<img src="img/bg-img/10.jpg" alt="">
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="single-blog-post style-1 d-flex flex-wrap mb-30">
			<!-- Blog Thumbnail -->
			<div class="blog-thumbnail">
				<img src="img/bg-img/11.jpg" alt="">
			</div>
		</div>
	</div>
	<!-- ##### Treading Post Area End ##### -->

	<!-- ##### Hero Area Start ##### -->
	<div class="hero-area">
		<!-- Hero Post Slides -->
		<div class="hero-post-slides owl-carousel">
			<!-- Single Slide -->
			<div class="single-slide">
				<!-- Blog Thumbnail -->
				<div class="blog-thumbnail">
					<a href="#"><img src="img/bg-img/1.jpg" alt=""></a>
				</div>

				<!-- Blog Content -->
				<div class="blog-content-bg"></div>
			</div>

			<!-- Single Slide -->
			<div class="single-slide">
				<!-- Blog Thumbnail -->
				<div class="blog-thumbnail">
					<a href="#"><img src="img/bg-img/2.jpg" alt=""></a>
				</div>

				<!-- Blog Content -->
				<div class="blog-content-bg"></div>
			</div>

			<!-- Single Slide -->
			<div class="single-slide">
				<!-- Blog Thumbnail -->
				<div class="blog-thumbnail">
					<a href="#"><img src="img/bg-img/3.jpg" alt=""></a>
				</div>

				<!-- Blog Content -->
				<div class="blog-content-bg"></div>
			</div>

			<!-- Single Slide -->
			<div class="single-slide">
				<!-- Blog Thumbnail -->
				<div class="blog-thumbnail">
					<a href="#"><img src="img/bg-img/3.jpg" alt=""></a>
				</div>

				<!-- Blog Content -->
				<div class="blog-content-bg"></div>
			</div>
		</div>
	</div>
	<!-- ##### Hero Area End ##### -->

	<!-- ##### Catagory Area Start ##### -->
	<div class="post-catagory section-padding-100-0 mb-70">
		<h2 href="#" style="text-align: center; margin-bottom: 3%;">이번주에
			가장 사랑받은 디저트&레시피!</h2>
		<div class="container">
			<div class="row justify-content-center">
				<!-- Single Post Catagory -->
				<%
				for (RecipesVO rvo : rlist) {
				%>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=rvo.getDes_img() %>" alt="">
					</div>
					<p> <%=rvo.getDes_name() %></p>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>
	<div class="post-catagory section-padding-100-0 mb-70">
		<h2 href="#" style="text-align: center; margin-bottom: 3%;">입맛 없을
			때! 식사대용 디저트로 만들어볼까요?</h2>
		<div class="container">
			<div class="row justify-content-center">
				<!-- Single Post Catagory -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="img/bg-img/4.jpg" alt="">
					</div>
					<p>맛남의광장에서 나온 백종원의 파프리카무침 2가지 방법!</p>
				</div>

				<!-- Single Post Catagory -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="img/bg-img/5.jpg" alt="">
					</div>
					<p>로제크림치킨 l 귀차니즘이 폭팔하는 오늘같은 날! 편의점 재료로 떼우쟈!</p>
				</div>

				<!-- Single Post Catagory -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="img/bg-img/6.jpg" alt="">
					</div>
					<p>로제크림치킨 l 귀차니즘이 폭팔하는 오늘같은 날! 편의점 재료로 떼우쟈!</p>
				</div>
			</div>
		</div>
	</div>

	<div class="post-catagory section-padding-100-0 mb-70">
		<h2 href="#" style="text-align: center; margin-bottom: 3%;">주말에는
			아이들과 즐길 수 있을만한 디저트!</h2>
		<div class="container">
			<div class="row justify-content-center">
				<!-- Single Post Catagory -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="img/bg-img/4.jpg" alt="">
					</div>
					<p>맛남의광장에서 나온 백종원의 파프리카무침 2가지 방법!</p>
				</div>

				<!-- Single Post Catagory -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="img/bg-img/5.jpg" alt="">
					</div>
					<p>로제크림치킨 l 귀차니즘이 폭팔하는 오늘같은 날! 편의점 재료로 떼우쟈!</p>
				</div>

				<!-- Single Post Catagory -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="img/bg-img/6.jpg" alt="">
					</div>
					<p>로제크림치킨 l 귀차니즘이 폭팔하는 오늘같은 날! 편의점 재료로 떼우쟈!</p>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Catagory Area End ##### -->

</body>

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-12 col-sm-5">
					<!-- Copywrite Text -->
					<p class="copywrite-text">
						<a href="#"> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>document.write(new Date().getFullYear());</script>
							All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
				<div class="col-12 col-sm-7">
					<!-- Footer Nav -->
					<div class="footer-nav">
						<ul>
							<li class="active"><a href="#">홈</a></li>
							<li><a href="#">회원가입</a></li>
							<li><a href="#">로그인</a></li>
							<li><a href="#">자유게시판</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>

</html>