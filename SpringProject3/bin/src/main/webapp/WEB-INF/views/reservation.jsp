<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isErrorPage="true" %>
<% response.setStatus(500); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Arizonia&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<c:url value="/resources/css/animate.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/owl.theme.default.min.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-datepicker.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/jquery.timepicker.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/flaticon.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/home.css"/>"/>
	<!-- ĳ���� -->
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
	<!-- dropdown -->
	<link rel="stylesheet" href="<c:url value="/resources/css/dropdown.css"/>"/>
    <!--��ũ��� ���� css-->
    <link rel="stylesheet" href="<c:url value="/resources/css/darkmode.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/nav.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/reservation.css"/>"/>
</head>
<body style="overflow-x: hidden">
	
	<!-- header ȣ�� -->
	<jsp:include page='nav.jsp'/>
	
	<section id="mainimg" class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('resources/images/bg_1.jpg');">
	  <div class="overlay"></div>
	  <div class="container">
	    <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
	      <div class="col-md-9 ftco-animate pb-5 text-center">
	       <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>Blog <i class="fa fa-chevron-right"></i></span></p>
	       <h1 class="mb-0 bread">Blog</h1>
	     </div>
	   </div>
	 </div>
	</section>
	
	<!-- �ǳ��� ���Զ� -->
	<section id="maincon">
		<div id="carousel">
			<div class="swiper mySwiper">
		      <div class="swiper-wrapper">
		        <div class="swiper-slide"><img src="resources/images/hotel-resto-1.jpg"></div>
		        <div class="swiper-slide"><img src="resources/images/hotel-resto-2.jpg"></div>
		        <div class="swiper-slide"><img src="resources/images/hotel-resto-3.jpg"></div>
		        <div class="swiper-slide"><img src="resources/images/hotel-resto-4.jpg"></div>
		        <div class="swiper-slide"><img src="resources/images/hotel-resto-5.jpg"></div>
		        <div class="swiper-slide"><img src="resources/images/hotel-resto-6.jpg"></div>
		        <div class="swiper-slide"><img src="resources/images/hotel-resto-7.jpg"></div>
		        <div class="swiper-slide"><img src="resources/images/hotel-resto-8.jpg"></div>
		        <div class="swiper-slide"><img src="resources/images/hotel-resto-9.jpg"></div>
		      </div>
		      <div class="swiper-button-next"></div>
		      <div class="swiper-button-prev"></div>
		    </div>
		    <div>
		    	<h2>ķ���� �̸�</h2>
		    	<div>
		    		<p><span class="material-icons">grade</span>4.8/5 &nbsp; <a href="#" id="blue">�ı� 0��</a></p>    		
		    	</div>
		    </div>
		    <div class="tab-content" id="v-pills-tabContent">
               <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
                   <form action="#" class="search-property-1">
                       <div class="row no-gutters">
                           <div class="col-md d-flex">
                               <div class="form-group p-4">
                                   <label for="#">üũ�� �ð�</label>
                                   <div class="form-field">
                                       <div class="icon"><span class="fa fa-calendar"></span></div>
                                       <input autocomplete="off" name ="check_in_time" type="text" class="form-control checkin_date" placeholder="Check In Date">
                                   </div>
                               </div>
                           </div>
                           <div class="col-md d-flex">
                               <div class="form-group p-4">
                                   <label for="#">üũ�ƿ� �ð�</label>
                                   <div class="form-field">
                                       <div class="icon"><span class="fa fa-calendar"></span></div>
                                       <input autocomplete="off" name ="check_out_time" type="text" class="form-control checkout_date" placeholder="Check Out Date">
                                   </div>
                               </div>
                           </div>
                       </div>
                   </form>
               </div>
            </div>
            <div id="all_area">
            	<a href="#" class ="area">
            		<img src="resources/images/place-1.jpg">
            		<div class="infor">
            			<div class="infor_1">
            				<div>����A</div>
            				<div>80,000 ��</div>
            			</div>
            			<div class="infor_2">���̵� ����/�����밡��/�ڸ�����/����ķ��</div>
            			<div class="infor_3">
            				<div>���� ������ �ڸ�</div>
            				<div>3 �ڸ�</div>
            			</div>
            		</div>
            	</a>
            	<a href="#" class ="area">
            		<img src="resources/images/place-2.jpg">
            		<div class="infor">
            			<div class="infor_1">
            				<div>����B</div>
            				<div>90,000 ��</div>
            			</div>
            			<div class="infor_2">���̵� ����/�����밡��/�ڸ�����/����ķ��</div>
            			<div class="infor_3">
            				<div>���� ������ �ڸ�</div>
            				<div>2 �ڸ�</div>
            			</div>
            		</div>
            	</a>
            	<a href="#" class ="area">
            		<img src="resources/images/place-3.jpg">
            		<div class="infor">
            			<div class="infor_1">
            				<div>����C</div>
            				<div>40,000 ��</div>
            			</div>
            			<div class="infor_2">���̵� ����/����ķ��</div>
            			<div class="infor_3">
            				<div>���� ������ �ڸ�</div>
            				<div>1 �ڸ�</div>
            			</div>
            		</div>
            	</a>
            </div>

		</div>
	</section>
	
	
	

    
	<!-- footer ȣ�� -->
    <jsp:include page='footer.jsp'/>

    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen">
    	<svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
        </svg>
    </div>


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

    <!-- ��ũ��� js-->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="<c:url value="/resources/js/darkmode.js"/>"></script>
    
    <!-- ĳ���� -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script>
      var swiper = new Swiper(".mySwiper", {
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    </script>
</body>

</html>