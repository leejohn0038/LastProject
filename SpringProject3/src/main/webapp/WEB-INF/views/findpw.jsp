<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form name="pwfindscreen">
		<div class = "search-title">
			<h3>����Ȯ��</h3>
		</div>
		<section class = "form-search">
			<div class = "find-id">
				<label>���̵�</label>
				<input type="text" id="id" class = "btn-id" placeholder = "���̵�">
			<br>
			</div>
			<div class = "find-email">
				<label>�̸���</label>
				<input type="text"  id="email" class = "btn-email" placeholder = "�̸���">
			</div>
				<br>
		</section>
		<div id="check_result"></div>
		<div class ="btnSearch">
			<input type="button" name="enter" value="ã��"  onClick="pw_search()">
			<input type="button" name="cancle" value="���" onClick="history.back()">
	 	</div>
	 </form>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script src="<c:url value="/resources/js/findpw.js?after"/>"></script>
</body>
</html>