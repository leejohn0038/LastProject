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
	<form name="idfindscreen">
		<div class = "search-title">
			<h3>�޴��� ����Ȯ��</h3>
		</div>
		<section class = "form-search">
			<div class = "find-name">
				<label>�̸�</label>
				<input type="text" name="name" class = "btn-name" placeholder = "����� �̸�">
			<br>
			</div>
			<div class = "find-phone">
				<label>��ȣ</label>
				<input type="number"  name="phone" class = "btn-phone" placeholder = "�޴�����ȣ�� '-'���� �Է�">
			</div>
				<br>
		</section>
		<div class ="btnSearch">
			<input type="button" name="enter" value="ã��"  onClick="id_search()">
			<input type="button" name="cancle" value="���" onClick="history.back()">
	 	</div>
	 </form>
	 
<script src="<c:url value="/resources/js/findid.js?after"/>"></script>
</body>
</html>