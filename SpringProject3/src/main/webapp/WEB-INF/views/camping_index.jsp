<%@page import="com.spring.project.review.DTO.CampingReviewDTO"%>
<%@page import="com.spring.project.camping.DTO.CampingVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Arizonia&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <link rel="stylesheet" href="<c:url value="./resources/css/animate.css"/>"/>
  <link rel="stylesheet" href="<c:url value="./resources/css/owl.carousel.min.css"/>"/>
  <link rel="stylesheet" href="<c:url value="./resources/css/owl.theme.default.min.css"/>"/>
  <link rel="stylesheet" href="<c:url value="./resources/css/magnific-popup.css"/>"/>
  <link rel="stylesheet" href="<c:url value="./resources/css/bootstrap-datepicker.css"/>"/>
  <link rel="stylesheet" href="<c:url value="./resources/css/jquery.timepicker.css"/>"/>
  <link rel="stylesheet" href="<c:url value="./resources/css/flaticon.css"/>"/>
  <link rel="stylesheet" href="<c:url value="./resources/css/style.css"/>"/>
  
  <link rel="stylesheet" href="<c:url value="./resources/css/width.css"/>" />
  <!-- naver map -->
  <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=rlwhiqh9cv"></script>
  
  <!-- review -->
  <script type="text/javascript" src="./resources/js/page_tab.js"></script>
  
  <link rel="stylesheet" href="./resources/css/camping_index_style.css">
</head>
<body>

	<% CampingVO info = (CampingVO)request.getAttribute("info"); %>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
		   <a class="navbar-brand" href="index.html">Pacific<span>Travel Agency</span></a>
		   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
		     <span class="oi oi-menu"></span> Menu
		   </button>
		
		   <div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
					<li class="nav-item active"><a href="about.html" class="nav-link">About</a></li>
					<li class="nav-item"><a href="destination.html" class="nav-link">Destination</a></li>
					<li class="nav-item"><a href="hotel.html" class="nav-link">Hotel</a></li>
					<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
					<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
				</ul>
		   </div>
		</div>
	</nav>
 	<!-- END nav -->
 	
 	<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('resources/images/bg_1.jpg');">
	  <div class="overlay"></div>
	  <div class="container">
	    <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
	      <div class="col-md-9 ftco-animate pb-5 text-center">
	       <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span><%= info.getFacltNm() %> <i class="fa fa-chevron-right"></i></span></p>
	       <h1 class="mb-0 bread"><%= info.getFacltNm() %></h1>
	     </div>
	   </div>
	 </div>
	</section>
	
	<section id="main_content" class="wrap ftco-section services-section text-center">
	
		<div class = "container tab_warp row obj_row_center">
		         		<div class = "bgc_color_box col-md-4 min-vh-70"></div>
		         		<div class="bgc_box col-md-4 ftco-section align-items-center min-vh-70">
		           			<div>
		             			<h2 class="h2_size"><%= info.getFacltNm() %></h2>
		             			
		             			<hr>
		             			<div>
									<a class="carousel-control-prev2 bg-dark w-auto" href="#recipeCarousel" role="button" data-slide="prev">
					                	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					                 	<span class="sr-only">Previous</span>
					               	</a>
					               	<a class="carousel-control-next2 bg-dark w-auto" href="#recipeCarousel" role="button" data-slide="next">
					                   	<span class="carousel-control-next-icon" aria-hidden="true"></span>
					                   	<span class="sr-only">Next</span>
					               	</a>
								</div>
								
								<div><a href="">����Ʈ ������</a></div>
								<div><a href="">�����ϱ�</a></div>
							</div>
						</div>
						
						<div class="carousel_size text-center my-3">
						    <div class="row mx-auto my-auto">
						        <div id="recipeCarousel" class="carousel slide w-100" data-ride="carousel">
						            <div class="carousel-inner w-100" role="listbox">
						               	<div class="carousel-item active">
						                    <img class="card-img d-block col-3" src="<%= info.getFirstImageUrl() %>">
						                </div>
						                
						               	<c:forEach var="item" items="${img_vo}">
						               		<div class="carousel-item">
						                    	<img class="card-img d-block col-3" src="${ item.imgURL }">
						                	</div>
						               	</c:forEach>
						               	
						            </div>
						        </div>
						    </div>
						</div>
					</div>
	
		<div class="container">
			<div class="tab" id="tab">
				<ul class="nav nav-tabs nav-justified">
				  <li class="nav-item">
				    <a class="nav-link active" data-toggle="tab"  href="#tab01">������</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-toggle="tab"  href="#tab02">��ġ����</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-toggle="tab"  href="#tab03">����</a>
				  </li>
				</ul>
			</div>
			

			<div class="tab-content">
		     	<div class="tab-pane fade show active min-vh-80" id="tab01">
					
					<div>
						<div class = "camping_text">
							
							<p><%=info.getLineIntro() %></p>
							
						</div>
					</div>
					
					<div>
						<div class = "camping_data">
	
							<div>
								<img src="./resources/images/person_4.jpg" alt="�δ�ü�1" />
								<img src="./resources/images/person_1.jpg" alt="�δ�ü�2" />
								<img src="./resources/images/person_4.jpg" alt="�δ�ü�3" />
							</div>
							
						</div>
					</div>
				</div>
	
				<div class="tab-pane fade min-vh-80" id="tab02">
					<div class = "map_warp">
					
						<div class="map_text">
							<p><%= info.getAddr1() %></p>
						</div>
						
						<div id = "map" style="width:500px;height:500px;">
							<script type="text/javascript" src="./resources/js/naver_map.js"></script>
							<script> createMap(<%=info.getMapY()%>, <%=info.getMapX()%>) </script>
						</div>
					
					</div>
				</div>
		
		     	<div class="tab-pane fade min-vh-80" id="tab03">
		
					<section id="reivew" class="ftco-section">
						<div class="container">
							<!-- �ֽż� / ��õ�� / ������  -->
							<div id="top_box" class="flex_1">
								<div class="left-sort">
									<select name="review_search_select_box" onchange="select_click_event(this.options[this.selectedIndex].value,<%=info.getContentId() %>)">
										<option value="reviewId">�ֽż�</option>
										<option value="starRanking">������</option>
									</select>
								</div>
								
								<div id="write_btn_box" class="right-sort">
									<button id="write_btn" class="write_button">
										<a href="/project/review?type=0&contentId=<%=info.getContentId() %>">�۾���</a>
									</button>
								</div>
							</div>
							<div class="row d-flex">
								<c:forEach var="review" items="${lists}">
					             	<div class="col-md-4 d-flex ftco-animate flex_1">
					              		<div class="blog-entry justify-content-end w100p">
					               			<a href="blog-single.html" class="block-20" style="background-image: url('./resources/images/image_1.jpg');"></a>
					       					<div class="text">
					        					<div class="d-flex align-items-center mb-4 topp">
					         						<div class="one">	
					          							<span class="day">11</span>
					        						</div>
					        						<div class="two">
														<span class="yr">2020</span>
														<span class="mos">${review.upDate}</span>
					        						</div>
					      						</div>
					      						
					      						<h3 class="heading"><a href="/project/reviewViewer?reviewId=${review.reviewId}">${review.title}</a></h3>
					      						<p>${review.review}</p>
					    					</div>
					  					</div>
									</div>
								</c:forEach>
								
								
								<div class="row mt-5">
								  <div class="col text-center">
								    <div class="block-27">
								      <ul> 	
										<li>
											<a data-toggle="tab" href="./TempCampInfo?contentId=<%= info.getContentId() %>&nowPage=1&cntPerPage=${paging.cntPerPage}${search.uri}&type=3#tab03">&lt;&lt;</a>
										</li>
										
										<c:choose>
											<c:when test="${paging.startPage != 1}">
												<li><a href="./TempCampInfo?contentId=<%= info.getContentId() %>&nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}${search.uri}&type=3#tab03">&lt;</a></li>
											</c:when>
											<c:otherwise>
												<li><a href="./TempCampInfo?contentId=<%= info.getContentId() %>&nowPage=${paging.startPage }&cntPerPage=${paging.cntPerPage}${search.uri}&type=3#tab03">&lt;</a></li>
											</c:otherwise>
										</c:choose>
										      
										<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
											<c:choose>
												<c:when test="${p == paging.nowPage }">
													<li class="active"><a href="./TempCampInfo?contentId=<%= info.getContentId() %>&nowPage=${p }&cntPerPage=${paging.cntPerPage}${search.uri}&type=3#tab03">${p }</a></li>
												</c:when>
												<c:when test="${p != paging.nowPage }">
													<li><a href="./TempCampInfo?contentId=<%= info.getContentId() %>&nowPage=${p }&cntPerPage=${paging.cntPerPage}${search.uri}&type=3#tab03">${p }</a></li>
												</c:when>
											</c:choose>
										</c:forEach>
										
										<c:choose>
											<c:when test="${paging.endPage != paging.lastPage}">
												<li><a href="./TempCampInfo?contentId=<%= info.getContentId() %>&nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}${search.uri}&type=3#tab03">&gt;</a></li>
											</c:when>
											<c:otherwise>
												<li><a href="./TempCampInfo?contentId=<%= info.getContentId() %>&nowPage=${paging.endPage }&cntPerPage=${paging.cntPerPage}${search.uri}&type=3#tab03">&gt;</a></li>
											</c:otherwise>
										</c:choose>
										<li><a href="./TempCampInfo?contentId=<%= info.getContentId() %>&nowPage=${paging.lastPage }&cntPerPage=${paging.cntPerPage}${search.uri}&type=3#tab03">&gt;&gt;</a></li>
								      </ul>
								</div>
								</div>
								</div>
							</div>
						</div>
					</section>	
		
					<section class="ftco-intro ftco-section ftco-no-pt">
						<div class="container">
							 <div class="row justify-content-center">
								  <div class="col-md-12 text-center">
									   <div class="img"  style="background-image: url(./resources/images/bg_2.jpg);">
										     <div class="overlay"></div>
										     <h2>We Are Pacific A Travel Agency</h2>
										     <p>We can manage your dream building A small river named Duden flows by their place</p>
										     <p class="mb-0"><a href="#" class="btn btn-primary px-4 py-3">Ask For A Quote</a></p>
									   </div>
								 </div>
							</div>
						</div>
					</section>
					
			    </div>
		    </div>
		</div>
	</section>
	
	
	<footer id="footer" class="ftco-footer bg-bottom ftco-no-pt" style="background-image: url(images/bg_3.jpg);">
		 <div class="container">
		   <div class="row mb-5">
		     <div class="col-md pt-5">
		       <div class="ftco-footer-widget pt-md-5 mb-4">
		         <h2 class="ftco-heading-2">About</h2>
		         <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
		         <ul class="ftco-footer-social list-unstyled float-md-left float-lft">
		           <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
		           <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
		           <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
		         </ul>
		       </div>
		     </div>
		     <div class="col-md pt-5 border-left">
		       <div class="ftco-footer-widget pt-md-5 mb-4 ml-md-5">
		         <h2 class="ftco-heading-2">Infromation</h2>
		         <ul class="list-unstyled">
		           <li><a href="#" class="py-2 d-block">Online Enquiry</a></li>
		           <li><a href="#" class="py-2 d-block">General Enquiries</a></li>
		           <li><a href="#" class="py-2 d-block">Booking Conditions</a></li>
		           <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
		           <li><a href="#" class="py-2 d-block">Refund Policy</a></li>
		           <li><a href="#" class="py-2 d-block">Call Us</a></li>
		         </ul>
		       </div>
		     </div>
		     <div class="col-md pt-5 border-left">
		      <div class="ftco-footer-widget pt-md-5 mb-4">
		       <h2 class="ftco-heading-2">Experience</h2>
		       <ul class="list-unstyled">
		         <li><a href="#" class="py-2 d-block">Adventure</a></li>
		         <li><a href="#" class="py-2 d-block">Hotel and Restaurant</a></li>
		         <li><a href="#" class="py-2 d-block">Beach</a></li>
		         <li><a href="#" class="py-2 d-block">Nature</a></li>
		         <li><a href="#" class="py-2 d-block">Camping</a></li>
		         <li><a href="#" class="py-2 d-block">Party</a></li>
		       </ul>
		     </div>
		   </div>
		   <div class="col-md pt-5 border-left">
		     <div class="ftco-footer-widget pt-md-5 mb-4">
		      <h2 class="ftco-heading-2">Have a Questions?</h2>
		      <div class="block-23 mb-3">
		        <ul>
		          <li><span class="icon fa fa-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
		          <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+2 392 3929 210</span></a></li>
		          <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">info@yourdomain.com</span></a></li>
		        </ul>
		      </div>
		    </div>
		  </div>
		</div>
		<div class="row">
		 <div class="col-md-12 text-center">
		
		   <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
		   Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
		   <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
		    </div>
		  </div>
		</div>
	</footer>
 

<script src="./resources/js/jquery.min.js"></script>
<script src="./resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="./resources/js/popper.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<script src="./resources/js/jquery.easing.1.3.js"></script>
<script src="./resources/js/jquery.waypoints.min.js"></script>
<script src="./resources/js/jquery.stellar.min.js"></script>
<script src="./resources/js/owl.carousel.min.js"></script>
<script src="./resources/js/jquery.magnific-popup.min.js"></script>
<script src="./resources/js/jquery.animateNumber.min.js"></script>
<script src="./resources/js/bootstrap-datepicker.js"></script>
<script src="./resources/js/scrollax.min.js"></script>
<script src="./resources/js/comping_index_carousel_js.js"></script>
<script src="./resources/js/main.js"></script>
<script src="./resources/js/camping_index.js"></script>

<c:if test="${type == 3}">
	<script>
		review();
	</script>
</c:if> 

</body>
</html>