<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<nav id="navbar">
	    <div><a href="./main" class="potal">CAMPING</a></div>
        <ul class="nav" id="find">
            <li class="modal_btn" id="modal_place_btn"><ion-icon class="nav_icon" name="location-outline"></ion-icon>���</li>
            <li class="modal_btn" id="modal_day_btn"><ion-icon class="nav_icon" name="calendar-number-outline"></ion-icon>��¥</li>
        </ul>
        <ul id="main_nav" class="nav">
			<li><a href="./main" class="potal">HOME</a></li>
			<li class="nav-item dropdown show"><a href="./search" class="potal ">Find Campsite</a>
				<div id="dropmenu"class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					<a class="dropdown-item" href="./map"><span class="dropdown_item">���� �˻�</span></a>
					<a class="dropdown-item" href="./search"><span class="dropdown_item">�Ϲ� �˻�</span></a>
				</div>
			</li>
			<li><a href="./board" class="potal">Free Board</a></li>
			<li><a href="./support" class="potal">Service Center</a></li>
			<li><a href="./login" class="potal">Login</a></li>
			<li><a href="./login?member_type=1" class="potal">Business Login</a></li>
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
	
</body>

</html>
