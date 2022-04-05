<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
	<!-- header css -->
	<link rel="stylesheet" href="<c:url value="/resources/css/renewal_nav.css"/>"/>
	<!--��ũ��� ���� css-->
    <link rel="stylesheet" href="<c:url value="/resources/css/darkmode.css"/>"/>
    <!-- ��� css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/modal.css"/>"/>
	<!-- ������ css -->
	<link rel="stylesheet" href="<c:url value="/resources/css/template.css"/>"/>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value="/resources/css/jangec.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/jangSupport.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/jangDarkMode.css"/>"/>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body style="overflow-x: hidden">
	
<!-- header ȣ�� -->
<jsp:include page='renewal_nav.jsp'/>
<div id="main_ani">
	<h2 id=main_text><span>Let's go</span><br>Camping</h2>
	<img src="resources/images/moon.png" id="moon">
	<img src="resources/images/bird1.png" id="bird1">
	<img src="resources/images/bird2.png" id="bird2">
	<img src="resources/images/forest.png" id="forest">
	<img src="resources/images/rocks.png" id="rocks">
	<img src="resources/images/water.png" id="water">
</div>
<!-- /Header -->
<!-- Contents -->
<section class="section" id ="contants" style="padding-top: 76px">
	<!-- Support Board Nav -->
	<div class="container-lg pb-0">
		<div class="d-flex justify-content-center">
			<div class="mt-5 mb-5 d-flex flex-column">
				<p class="h1 text-center">C&nbsp;O&nbsp;N&nbsp;T&nbsp;A&nbsp;C&nbsp;T</p>
				<p class="text-center">����&nbsp;�Ҹ���&nbsp;��&nbsp;����Դϴ�</p>
			</div>
		</div>
		<div class="border-top mb-3 border-dark border-3 seperator"></div>
		<div class="row">
			<div class="col-md-5">
				<div class="row">
					<form action="./support" method="POST" accept-charset="EUC-KR">
						<div class="input-group input-group-sm mb-3 align-self-bottom">
							<select id="inputState" class="form-select form-select-sm col-md-3" name="searchByWhat">
								<option selected value="all">��ü</option>
								<option value="title">����</option>
								<option value="contents">����</option>
							</select>
							<input type="text" class="form-control-sm border-light col-md-7" aria-label="Text input with dropdown button" name="searchKeyword">
							<button class="btn btn-outline-secondary btn-sm col-md-2" type="submit">Search</button>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-5 offset-md-2 d-flex align-items-end navCategory mb-2">
			  	<div class="row flex-fill">
				    <div class="col-md">
					    <div class="d-flex justify-content-end">
						    <a class="categoryClass ms-3" href="./support?categoryName=supportAll">��ü</a>
						    <a class="categoryClass ms-3" href="./support?categoryName=notice">��������</a>
						    <a class="categoryClass ms-3" href="./support?categoryName=askEdit">������û</a>
					    </div>
				    </div>
				    <c:if test="${not empty member_id }">
				    <div class="col-md-3 d-flex justify-content-end">
					   	<a class="" href="./write?board_class=supportBoard">�۾���</a>
				    </div>
				    </c:if>
			  	</div>
			</div>
		</div>
		<div class="border-top mb-3 border-dark border-1 seperator"></div>
	</div>
	<!-- /Support Board Nav -->
	<!-- Table -->
	<div class="container-lg">
		<div class="table-responsive">
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th class="col-md-1" scope="col">#</th>
			      <th class="col-md-1" scope="col">�з�</th>
			      <th class="col-md-6 text-start" scope="col">����</th>
			      <th class="col-md-1" scope="col">�ۼ���</th>
			      <th class="col-md-1" scope="col">ó������</th>
			      <th class="col-md-1" scope="col">��ȸ��</th>
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
	</div>
	<!-- /Table -->
	<!-- Paging -->
	<div class="container-lg">
		<div class="row mt-5">
			<div class="col d-flex justify-content-center">
				<div class="block-27">
					<ul class="pagination">
						<li class="page-item"><a class="page-link text-dark" href="./support?nowPage=1&cntPerPage=${paging.cntPerPage}">&lt;&lt;</a></li>
							<c:choose>
								<c:when test="${paging.startPage != 1}">
									<li class="page-item"><a class="page-link text-dark" href="./support?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link text-dark" href="./support?nowPage=${paging.startPage }&cntPerPage=${paging.cntPerPage}">&lt;</a></li>
								</c:otherwise>
							</c:choose>      
							<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
								<c:choose>
									<c:when test="${p == paging.nowPage }">
										<li class="page-item active"><a class="page-link text-dark" href="./support?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
									</c:when>
									<c:when test="${p != paging.nowPage }">
										<li class="page-item"><a class="page-link text-dark" href="./support?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
									</c:when>
								</c:choose>
							</c:forEach>
							<c:choose>
								<c:when test="${paging.endPage != paging.lastPage}">
									<li class="page-item"><a class="page-link text-dark" href="./support?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link text-dark" href="./support?nowPage=${paging.endPage }&cntPerPage=${paging.cntPerPage}">&gt;</a></li>
								</c:otherwise>
							</c:choose>
						<li class="page-item"><a class="page-link text-dark" href="./support?nowPage=${paging.lastPage }&cntPerPage=${paging.cntPerPage}">&gt;&gt;</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- /paging -->	
</section>
<!-- /Contents -->
<!-- Modal & PopUp Menu -->
<div id="popUpMenu" style="display:none;">
	<ul class="list-group list-group-flush">
		<li id="memberPost" class="indiPopUp list-group-item list-group-item-primary opacity-75" style="cursor:pointer"
		role="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">�ۼ��� ����</li>
	</ul>
</div>

<div class="modal fade" id="staticBackdrop" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div id="individual" class="modal-body">
      </div>
      <div class="modal-footer">
        <button id="modalBtn" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- Footer -->
<!-- /Footer -->
<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- ��ũ��� js-->
<script src="<c:url value="/resources/js/main_ani.js"/>"></script>
<script src="<c:url value="/resources/js/anime.min.js"/>"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="<c:url value="/resources/js/darkmode.js"/>"></script>
<!-- ��� JS -->
<script src="<c:url value="/resources/js/modal.js"/>"></script>
<!-- ������ js -->
<script src="<c:url value="/resources/js/jangSupport.js"/>"></script>
<script src="<c:url value="/resources/js/jangec.js"/>"></script>
<script src="<c:url value="/resources/js/jangDarkMode.js"/>"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>