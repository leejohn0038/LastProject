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
      <c:choose>
      	<c:when test="${!empty id }">
      		<div class = "container">
      			<div class = "found-success">
	      			<h4>  ȸ������ ���̵�� </h4>  
	      			<div class ="found-id">${id }</div>
	      			<h4>  �Դϴ� </h4>
	   		   </div>
	     		<div class = "found-login">
 		    		<a href="./login">�α���</a>
       			</div>
       		</div>	
      	</c:when>
      	<c:when test="${empty id }">
      		 <div class = "container">
		      	<div class = "found-fail">
			      <h4>  ��ϵ� ������ �����ϴ� </h4>  
			     </div>
			     <div class = "found-login">
		 		    <input type="button" id="btnback" value="�ٽ� ã��" onClick="history.back()"/>
		 		    <a href="./signin"></a>
		       	</div>
		       </div>  
      	</c:when>
      </c:choose>
</body>
</html>