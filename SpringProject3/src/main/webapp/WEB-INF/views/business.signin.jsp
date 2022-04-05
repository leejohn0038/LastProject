<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/signin.css?after"/>" rel="stylesheet" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=77mbzylhqr"></link>

<style type="text/css">
.row1{
  margin: 0px auto;
  width:700px;
}
</style>
</head>
<body>
 <div style="height: 30px"></div>
  <div class="row row1">
    <h1 class="text-center">ȸ������</h1>
    <form name="joinFrm" id="joinFrm">
    <table class="table">
     <tr>
       <th class="text-right danger" width="15%">ķ���� �̸�</th>
       <td width=85%>
         <input type=data name=camp class="input-sm" size=25 id="camp">
       </td>
     </tr>
     <tr>
       <th class="text-right danger" width="15%">���̵�</th>
       <td width=85%>
         <input type=text name=id class="input-sm" size=15 readonly id="id">
         <input type=button value="�ߺ�üũ" class="btn btn-sm btn-primary" onclick="idcheck()">
       </td>
     </tr>
     <tr>
       <th class="text-right danger" width="15%">��й�ȣ</th>
       <td width=85%>
         <input type=password name=pwd class="input-sm" size=15 id="pwd">
         &nbsp;���Է�:<input type=password name=pwd1 class="input-sm" size=15 id="pwd1">
       </td>
     </tr>
     <tr>
       <th class="text-right danger" width="15%">�̸�</th>
       <td width=85%>
         <input type=text name=name class="input-sm" size=15 id="name">
       </td>
     </tr>
     <tr>
       <th class="text-right danger" width="15%">�̸���</th>
       <td width=85%>
         <input type=text name=email class="input-sm" size=45 id="email">
       </td>
     </tr>
     <tr>
       <th class="text-right danger" width="15%">����� �����</th>
       <td width=85%>
         <input type="file" name="file" id="imageFileOpenInput" accept="image/*">
       </td>
     </tr>
     <tr>
       <td colspan="2" class="text-center">
         <input type=button value="ȸ������" class="btn btn-sm btn-danger" id="joinBtn">
         <input type=button value="���" class="btn btn-sm btn-warning"
           onclick="javascript:history.back()"
         >
       </td>
     </tr>
    </table>
    </form>
  </div>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="<c:url value="/resources/js/set.post.js?after"/>"></script>
<script type="text/javascript">
function idcheck()
{
	window.open("./ivc","idcheck","width=320,height=300,scrollbars=no");
}

$(function(){
	$('#joinBtn').click(function(){

		let id=$('#id').val();
		if(id.trim()=="")
		{
			$('#id').focus();
			return;
		}
		
		let pwd=$('#pwd').val();
		if(pwd.trim()=="")
		{
			$('#pwd').focus();
			return;
		}
		
		let pwd1=$('#pwd1').val();
		if(pwd1.trim()=="")
		{
			$('#pwd1').focus();
			return;
		}
		
		if(pwd!==pwd1)
		{
			alert("��й�ȣ�� �ٽ� �Է��ϼ���!!");
			$('#pwd1').val("");
			$('#pwd1').focus();
			return;
		}
		
		let name=$('#name').val();
		if(name.trim()=="")
		{
			$('#name').focus();
			return;
		}
		
		let email=$('#email').val();
		if(email.trim()=="")
		{
			$('#email').focus();
			return;
		}
		
		let camp=$('#camp').val();
		if(camp.trim()=="")
		{
			$('#camp').focus();
			return;
		}
		
	
		$.ajax({
		   url : '/project/rest/signin',
		   type: "POST",
		   dataType : "json",
		   data : {
			   "member_id" : id,
			   "member_pwd" : pwd,
			   "member_name" : name,
			   "camp" : camp,
			   "email" : email,
			   "member_type" : 1,
			   "permit" : 0
		   },
		   success : function(result) {
			  alert("ȸ������ ��û�� �Ϸ��߽��ϴ�");
			  location.href = '/project/about';
            
		   },
		   error : function(request, status, error) {
			   console.log(request + "/" + status + "/" + error);
		   }
   		});
	});
});
</script>
</body>
</html>