<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<body>
	<nav id="navbar">
	    <div><a href="#" class="potal">CAMPING</a></div>
        <ul class="nav" id="find">
            <li class="modal_btn" id="modal_place_btn"><ion-icon class="nav_icon" name="location-outline"></ion-icon>���</li>
            <li class="modal_btn" id="modal_day_btn"><ion-icon class="nav_icon" name="calendar-number-outline"></ion-icon>��¥</li>
        </ul>
        <ul id="main_nav" class="nav">
           <li><a href="#" class="potal">HOME</a></li>
           <li><a href="#" class="potal">Find Campsite</a></li>
           <li><a href="#" class="potal">Free Board</a></li>
           <li><a href="#" class="potal">Service Center</a></li>
           <li><a href="#" class="potal">Login</a></li>
           <label id="darkmodecheck" >
               <input type="checkbox" id="checkBoxId" >
               <span id="moonsun">
                   <ion-icon name='sunny-outline'></ion-icon>
               </span>
           </label>
        </ul>
        <a href="#" class="navbar__toggleBtn" id="ham">
        	<span class="material-icons">
			menu
			</span>
        </a>
	</nav>
	<div class="modal modal-overlay" id="modal_place">
	    <div class="modal_body">
	    	<div class="modeal_name">
	    		<div>���� �����?</div>
	    		<div id="close1"class="close close3"></div>
	    	</div>
	    	<div class="box">
	    		<form action="">
	    			<input id="box_text"type="text" name="" placeholder="����ã��...">
	    			<input id="box_submit"type="submit" name="" value="Search">
	    		</form>
	    	</div>
	    </div>
    </div>
    <div class="modal modal-overlay" id="modal_day">
        <div class="modal_body">
        	<div class="modeal_name">
				<div>���� �����?</div>
				<div id="close2" class="close close3"></div>
	    	</div>
	    	<div class="calendar">
	    		<form action="">
	    			<input type="date" id="start" name="trip-start">
	    			<input type="date" id="end" name="trip-end">
	    			<input id="calendar_submit"type="submit" name="" value="Search">
	    		</form>
	    	</div>
		</div>
    </div>
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
	</section>
	
</body>

</html>