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
    <!-- ��Ӵٿ� -->
    <link rel="stylesheet" href="<c:url value="/resources/css/dropdown.css"/>"/>
	<!-- ������ css/js -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value="/resources/css/jangec.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/template.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/jangDarkMode.css"/>"/>
	<script src="<c:url value="/resources/ckeditor/ckeditor.js"/>"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body style="overflow-x: hidden">
	
<!-- header ȣ�� -->
<jsp:include page='renewal_nav.jsp'/>
<jsp:include page='header_ani.jsp'/>
<!-- /Header -->
<!-- ������ -->
<section class="section" id ="contants" style="padding-top: 76px">
	<div class="container-lg">
		<div class="d-flex justify-content-center">
			<c:choose>
			<c:when test="${board_class eq 'freeBoard' }">
			<div class="mt-5 mb-5 d-flex flex-column">
				<p class="h1 text-center">B&nbsp;O&nbsp;A&nbsp;R&nbsp;D</p>
				<p class="text-center">������&nbsp;����</p>
			</div>
			</c:when>
			<c:otherwise>
			<div class="mt-5 mb-5 d-flex flex-column">
				<p class="h1 text-center">C&nbsp;O&nbsp;N&nbsp;T&nbsp;A&nbsp;C&nbsp;T</p>
				<p class="text-center">����&nbsp;�Ҹ���&nbsp;��&nbsp;����Դϴ�</p>
			</div>
			</c:otherwise>
			</c:choose>
		</div>
		<div class="border-top mb-3 border-dark border-3"></div>
	</div>
	<div class="container-lg">
	    <form id="writeForm">
	    	<div class="row">
	    	<c:choose>
			<c:when test="${board_class eq 'freeBoard' }">
				<div class="input-group mb-3">
					<div class="col-md-2">
						<select id="writeCategory" class="form-select" name="contents_category">
							<option selected value="daily">����</option>
							<option value="showoff">�ڶ�</option>
							<option value="buy">��ϴ�</option>
							<option value="sell">�˴ϴ�</option>
						</select>
					</div>
					<div class="col-md-10">
						<input type="text" class="form-control col-md-9" aria-label="Text input with dropdown button" name="title" id="title" placeholder="������ �Է��� �ּ���">
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="input-group mb-3">
					<div class="col-md-2">
						<select id="writeCategory" class="form-select col-md-3" name="contents_category">
							<c:if test="${manager eq 'admin' }">
								<option selected value="notice">��������</option>
							</c:if>
							<option value="askEdit">���ǻ���</option>
						</select>
					</div>
					<div class="col-md-10">
						<input type="text" class="form-control" aria-label="Text input with dropdown button" name="title" id="title" placeholder="������ �Է��� �ּ���">
					</div>
				</div>
			</c:otherwise>
	    	</c:choose>
	    	</div>
   			<div class="mb-3">
				<textarea class="form-control" rows="5" name="contents" id="writeEditor" placeholder="������ �Է��� �ּ���" >
					<c:if test="${contents.contents != null }">
						${contents.contents }
					</c:if>
				</textarea>
			</div>	
	    </form>
	</div>
	<div class="container-lg">
		<div class="d-flex justify-content-end">
			<button id="writeSavBtn" class="btn">����</button>
		</div>
	</div>
</section>
<!-- /������ -->	
<!-- ���� -->
<input type="hidden" id="board_class" value="${board_class }" />
<input type="hidden" id="post_id" value="${post_id }" />
<c:if test="${contents.contents != null }">
<input type="hidden" id="edit" value="true" />
</c:if>
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
<!-- dropdown -->	
<script src="<c:url value="/resources/js/dropdown.js"/>"></script>
<!-- ������ js -->
<script src="<c:url value="/resources/js/jangec.js"/>"></script>
<script src="<c:url value="/resources/js/jangWriteTest.js"/>"></script>
<script src="<c:url value="/resources/js/jangDarkMode.js"/>"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>