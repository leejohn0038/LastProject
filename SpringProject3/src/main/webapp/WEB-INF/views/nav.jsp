<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->

  <link rel="stylesheet" href="<c:url value="/resources/css/dropdown.css"/>"/>
    <!--��ũ��� ���� css-->
    <link rel="stylesheet" href="<c:url value="/resources/css/darkmode.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/nav.css"/>"/>

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
					<!-- �߰� �� ���� ���� �κ�-->
					<li class="nav-item dropdown show"><a href="free_board.html" class="nav-link">Community</a>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						  <a class="dropdown-item" href="free_board.html">���� �Խ���</a>
						  <a class="dropdown-item" href="review.html">�ı�</a>
						  <a class="dropdown-item" href="#">blog#3</a>
						</div>
					  </li>        
					 <!-- �߰� �� ���� �� �κ�-->
					<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
				</ul>
				<label id="darkmodecheck">
					<input type="checkbox" id="checkBoxId" checked>
					<span id="moonsun">
						<ion-icon name='sunny-outline'></ion-icon>
					</span>
				</label>
			</div>
		</div>
	</nav>
 <!-- END nav -->
 <!-- ��ũ��� �ִ� -->
	<section class="skybird" id="sky">
	    <span></span>
	    <span></span>
	    <span></span>
	    <span></span>
	    <span></span>
	    <span></span>
	    <span></span>
	    <span></span>
	    <span></span>
	    <span></span>
	    <div class="bird-container bird-container-one">
	      <div class="bird bird-one"></div>
	    </div>
	    <div class="bird-container bird-container-two">
	        <div class="bird bird-two"></div>
	    </div>
	    <div class="bird-container bird-container-three">
	        <div class="bird bird-three"></div>
	    </div>
	    <div class="bird-container bird-container-four">
	        <div class="bird bird-four"></div>
	    </div>
	</section>
	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
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
	<script src="<c:url value="/resources/js/main.js"/>"></script>
    
    <!-- home ��ũ��Ʈ-->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="<c:url value="/resources/js/home.js"/>"></script>
    <!-- ��ũ��� js-->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="<c:url value="/resources/js/darkmode.js"/>"></script>
</body>

</html>