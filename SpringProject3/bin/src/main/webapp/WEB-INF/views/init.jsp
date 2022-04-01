<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<button id="insert">ķ���� ������ �ʱ�ȭ �ϱ�</button>
	
	<script> 
		const contextPath = '/project/rest';
		const insert = document.getElementById('insert');
		const xhttp_insert = new XMLHttpRequest();
	
		xhttp_insert.addEventListener('readystatechange', (e) => {
			const target = e.target;
			const readyState = target.readyState;
			const status = target.status;
			
			if (readyState == 4) {
				if(status == 200) {
					alert("insert success");
				}
			}	
		});
	
		insert.addEventListener('click', () => {
			console.log(`${contextPath }`);
			xhttp_insert.open('POST', contextPath + '/init');
			xhttp_insert.send();
		});
	</script>
</body>
</html>