<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<%-- <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Arizonia&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="<c:url value="/resources/css/animate.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/owl.theme.default.min.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-datepicker.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/jquery.timepicker.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/flaticon.css"/>" />
  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/> --%>
<!-- ������ css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/css/jangec.css"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/css/jangSupport.css"/>"/>
  
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
   <div class="container">
     <a class="navbar-brand" href="index.html">Pacific<span>Travel Agency</span></a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
       <span class="oi oi-menu"></span> Menu
     </button>

     <div class="collapse navbar-collapse" id="ftco-nav">
       <ul class="navbar-nav ml-auto">
         <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
         <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
         <li class="nav-item"><a href="destination.html" class="nav-link">Destination</a></li>
         <li class="nav-item"><a href="hotel.html" class="nav-link">Hotel</a></li>
         <li class="nav-item active"><a href="blog.html" class="nav-link">Blog</a></li>
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
       <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>Blog <i class="fa fa-chevron-right"></i></span></p>
       <h1 class="mb-0 bread">������</h1>
     </div>
   </div>
 </div>
</section>

<!-- ���� -->
<section class="ftco-section">
	<div class="container-lg">
		<!-- ������ -->
		<div class="contents container-lg">
			<!-- Support Board Nav -->
			<div class="container">
				<div class="mt-5 mb-5 d-flex justify-content-center">
					<span class="h1">������</span>
				</div>
				<div class="row">
					<div class="col-md-4">
						<form class="d-flex" action="./support" method="POST" accept-charset="EUC-KR">
							<div class="input-group input-group-sm mb-3">
								<select id="inputState" class="form-select form-select-sm col-3" name="searchByWhat">
									<option selected value="all">��ü</option>
									<option value="title">����</option>
									<option value="contents">����</option>
								</select>
								<input type="text" class="form-control-sm border-light col-7" aria-label="Text input with dropdown button" name="searchKeyword">
								<button class="btn btn-outline-secondary btn-sm col-md-2" type="submit">Search</button>
							</div>
						</form>
					</div>
					<div class="col-5 offset-3">
					  	<div class="row">
						    <div class="col-9">
							    <div class="">
								    <a class="categoryClass ml-3" href="./support?categoryName=supportAll">��ü</a>
								    <a class="categoryClass ml-3" href="./support?categoryName=notice">��������</a>
								    <a class="categoryClass ml-3" href="./support?categoryName=askEdit">������û</a>
							    </div>
						    </div>
						    <div class="col-3">
							   	<a class="" href="./write?board_class=supportBoard">�۾���</a>
						    </div>
					  	</div>
					</div>
				</div>
			</div>
			<!-- /Support Board Nav -->
			<!-- Table -->
			<div class="table-responsive-lg">
				<table class="table table-hover">
				  <thead>
				    <tr>
				      <th class="col-1" scope="col">#</th>
				      <th class="col-1" scope="col">�з�</th>
				      <th class="col-6 text-start" scope="col">����</th>
				      <th class="col-1" scope="col">�ۼ���</th>
				      <th class="col-1" scope="col">�ۼ���</th>
				      <th class="col-1" scope="col">ó������</th>
				      <th class="col-1" scope="col">��ȸ��</th>
				    </tr>
				  </thead>
				  <tbody>
				    <c:forEach items="${supportContentsList }" var="supportContents">
				    	<tr>
				    		<td>${supportContents.post_id }</td>
				    		<td>
				    			<c:choose>
				    				<c:when test="${supportContents.contents_category eq 6 }">��������</c:when>
				    				<c:otherwise>���ǻ���</c:otherwise>
				    			</c:choose>
				    		</td>
				    		<td id="${supportContents.post_id }" class="pointer text-start" onClick="mainContents(${supportContents.post_id})">${supportContents.title }</td>
				    		<td class="userId pointer" id="${supportContents.member_id }">${supportContents.member_id }</td>
				    		<td>${supportContents.reg_date }</td>
				    		<td>
			    			<c:choose>
			    				<c:when test="${supportContents.process eq 1}">�̰�</c:when>
			    				<c:when test="${supportContents.process eq 2}">�ذ�</c:when>
			    				<c:otherwise>-</c:otherwise>
			    			</c:choose>
			    			</td>
			    			<td>${supportContents.views }</td>
				    	</tr>
				    </c:forEach>
				  </tbody>
				</table>
			</div>
			<!-- /Table -->
		</div>	
		<!-- Paging -->
		<div class="row mt-5">
			<div class="col d-flex justify-content-center">
				<div class="block-27">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="./support?nowPage=1&cntPerPage=${paging.cntPerPage}">&lt;&lt;</a></li>
							<c:choose>
								<c:when test="${paging.startPage != 1}">
									<li class="page-item"><a class="page-link" href="./support?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link" href="./support?nowPage=${paging.startPage }&cntPerPage=${paging.cntPerPage}">&lt;</a></li>
								</c:otherwise>
							</c:choose>      
							<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
								<c:choose>
									<c:when test="${p == paging.nowPage }">
										<li class="page-item active"><a class="page-link" href="./support?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
									</c:when>
									<c:when test="${p != paging.nowPage }">
										<li class="page-item"><a class="page-link" href="./support?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
									</c:when>
								</c:choose>
							</c:forEach>
							<c:choose>
								<c:when test="${paging.endPage != paging.lastPage}">
									<li class="page-item"><a class="page-link" href="./support?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link" href="./support?nowPage=${paging.endPage }&cntPerPage=${paging.cntPerPage}">&gt;</a></li>
								</c:otherwise>
							</c:choose>
						<li class="page-item"><a class="page-link" href="./support?nowPage=${paging.lastPage }&cntPerPage=${paging.cntPerPage}">&gt;&gt;</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /paging -->	
	</div>
</section>

<!-- Modal & PopUp Menu -->
<div id="popUpMenu" style="display:none;">
	<ul class="list-group list-group-flush">
		<li id="memberPost" class="indiPopUp list-group-item list-group-item-primary opacity-75" style="cursor:pointer">�ۼ��� ����</li>
	</ul>
</div>

<!-- /���� -->

<section class="ftco-intro ftco-section ftco-no-pt">
 <div class="container">
  <div class="row justify-content-center">
   <div class="col-md-12 text-center">
    <div class="img"  style="background-image: url(resources/images/bg_2.jpg);">
     <div class="overlay"></div>
     <h2>We Are Pacific A Travel Agency</h2>
     <p>We can manage your dream building A small river named Duden flows by their place</p>
     <p class="mb-0"><a href="#" class="btn btn-primary px-4 py-3">Ask For A Quote</a></p>
   </div>
 </div>
</div>
</div>
</section>

<footer class="ftco-footer bg-bottom ftco-no-pt" style="background-image: url(resources/images/bg_3.jpg);">
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



<!-- loader -->
<%-- <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div> --%>


<%-- <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/popper.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.waypoints.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.stellar.min.js"/>"></script>
<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.animateNumber.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap-datepicker.js"/>"></script>
<script src="<c:url value="/resources/js/scrollax.min.js"/>"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="<c:url value="/resources/js/google-map.js"/>"></script>
<script src="<c:url value="/resources/js/main.js"/>"></script> --%>
<!-- ������ js -->
<script src="<c:url value="/resources/js/jangSupport.js"/>"></script>
<script src="<c:url value="/resources/js/jangec.js"/>"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>