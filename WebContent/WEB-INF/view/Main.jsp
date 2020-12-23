<%@page import="project.DessertVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="project.RecipesDAO"%>
<%@ page import="project.RecipesVO"%>
<%@ page import="java.util.List"%>
<%@ page import= "project.MainVO"%>
<%@ page import= "project.MainDAO"%>
<%request.setCharacterEncoding("UTF-8");%>

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
   <div align="center">
      <form>
         <p>
            <input type="button" name="B1" value="레시피 랜덤 추천 받기"
               onclick="randomlink()">
         </p>
      </form>
   </div>
	
	<!-- 카테고리 -->
	<div class="post-catagory section-padding-100-0 mb-70">
		<h2 href="#" style="text-align: center; margin-bottom: 3%;">공부할때 </h2>
		<div class="container">
			<div class="row justify-content-center">
				<!-- Single Post Catagory -->
				<%
					MainDAO dao = new MainDAO();
					MainVO vo = dao.getDessert(3,4,5);
					RecipesDAO rdao = new RecipesDAO();
				
				%>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo.getMain_img1() %>" alt="">
					</div>
					<p><%=vo.getMain_name1() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo.getMain_img2() %>" alt="">
					</div>
					<p><%=vo.getMain_name2() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo.getMain_img3() %>" alt="">
					</div>
					<p><%=vo.getMain_name3() %></p>
				</div>
			</div>
		</div>
	</div>

	<div class="post-catagory section-padding-100-0 mb-70">
		<h2 href="#" style="text-align: center; margin-bottom: 3%;">졸릴때 </h2>
		<div class="container">
			<div class="row justify-content-center">
				<%
					MainDAO dao1 = new MainDAO();
					MainVO vo1 = dao1.getDessert(1,3,6);
				%>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo1.getMain_img1() %>" alt="">
					</div>
					<p><%=vo1.getMain_name1() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo1.getMain_img2() %>" alt="">
					</div>
					<p><%=vo1.getMain_name2() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo1.getMain_img3() %>" alt="">
					</div>
					<p><%=vo1.getMain_name3() %></p>
				</div>
			</div>
		</div>
	</div>
	
	<div class="post-catagory section-padding-100-0 mb-70">
		<h2 href="#" style="text-align: center; margin-bottom: 3%;">차박할때 </h2>
		<div class="container">
			<div class="row justify-content-center">
				<%
					MainDAO dao2 = new MainDAO();
					MainVO vo2 = dao2.getDessert(4,6,7);
				%>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo2.getMain_img1() %>" alt="">
					</div>
					<p><%=vo2.getMain_name1() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo2.getMain_img2() %>" alt="">
					</div>
					<p><%=vo2.getMain_name2() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo2.getMain_img3() %>" alt="">
					</div>
					<p><%=vo2.getMain_name3() %></p>
				</div>
			</div>
		</div>
	</div>
	<div class="post-catagory section-padding-100-0 mb-70">
		<h2 href="#" style="text-align: center; margin-bottom: 3%;">혼술할때 </h2>
		<div class="container">
			<div class="row justify-content-center">
				<%
					MainDAO dao3 = new MainDAO();
					MainVO vo3 = dao3.getDessert(2,4,8);
				%>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo3.getMain_img1() %>" alt="">
					</div>
					<p><%=vo3.getMain_name1() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo3.getMain_img2() %>" alt="">
					</div>
					<p><%=vo3.getMain_name2() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo3.getMain_img3() %>" alt="">
					</div>
					<p><%=vo3.getMain_name3() %></p>
				</div>
			</div>
		</div>
	</div>
	<div class="post-catagory section-padding-100-0 mb-70">
		<h2 href="#" style="text-align: center; margin-bottom: 3%;">건강식 디저트 </h2>
		<div class="container">
			<div class="row justify-content-center">
				<%
					MainDAO dao4 = new MainDAO();
					MainVO vo4 = dao.getDessert(1,4,5);
				%>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo4.getMain_img1() %>" alt="">
					</div>
					<p><%=vo4.getMain_name1() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo4.getMain_img2() %>" alt="">
					</div>
					<p><%=vo4.getMain_name2() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo4.getMain_img3() %>" alt="">
					</div>
					<p><%=vo4.getMain_name3() %></p>
				</div>
			</div>
		</div>
	</div>
	<div class="post-catagory section-padding-100-0 mb-70">
		<h2 href="#" style="text-align: center; margin-bottom: 3%;">접대용 디저트 </h2>
		<div class="container">
			<div class="row justify-content-center">
				<%
					MainDAO dao5 = new MainDAO();
					MainVO vo5 = dao5.getDessert(4,6,7);
				%>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo5.getMain_img1() %>" alt="">
					</div>
					<p><%=vo5.getMain_name1() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo5.getMain_img2() %>" alt="">
					</div>
					<p><%=vo5.getMain_name2() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo5.getMain_img3() %>" alt="">
					</div>
					<p><%=vo5.getMain_name3() %></p>
				</div>
			</div>
		</div>
	</div>
	
	<div class="post-catagory section-padding-100-0 mb-70">
		<h2 href="#" style="text-align: center; margin-bottom: 3%;">애기와 함께 </h2>
		<div class="container">
			<div class="row justify-content-center">
				<%
					MainDAO dao6 = new MainDAO();
					MainVO vo6 = dao6.getDessert(3,4,5);
				%>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo6.getMain_img1() %>" alt="">
					</div>
					<p><%=vo6.getMain_name1() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo6.getMain_img2() %>" alt="">
					</div>
					<p><%=vo6.getMain_name2() %></p>
				</div>
				
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post-catagory mb-30">
						<img src="<%=vo6.getMain_img3() %>" alt="">
					</div>
					<p><%=vo6.getMain_name3() %></p>
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

<script>
   
    var randomlinks=new Array()
    
    // 랜덤으로 보여줄 링크를 설정
    randomlinks[0]="https://www.10000recipe.com/recipe/6885805"
    randomlinks[1]="https://www.10000recipe.com/recipe/6857278"
    randomlinks[2]="https://www.10000recipe.com/recipe/6884886"
    randomlinks[3]="https://www.10000recipe.com/recipe/3595564"
    randomlinks[4]="https://www.10000recipe.com/recipe/6873390"
    randomlinks[5]="https://www.10000recipe.com/recipe/6854292"
    
    function randomlink(){
    window.location=randomlinks[Math.floor(Math.random()*randomlinks.length)]
    }
</script>