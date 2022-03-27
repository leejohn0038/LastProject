<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<style type="text/css">
.row {
    margin: 0px auto;
    width:300px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<div class="container">
     <div class="row">
       <h3>���̵��ߺ�üũ</h3>
       <table class="table">
         <tr>
           <td>
            ID:<input type=text id=id class="input-sm" size=15>
            <input type=button value="�ߺ�üũ" id="idcheckBtn" class="btn btn-sm btn-primary">
           </td>
         </tr>
         <tr>
           <td class="text-center" id="idcheck_result"></td><%-- ��� --%>
         </tr>
         <tr>
           <td class="text-center" id="ok"></td><%--Ȯ�� --%>
         </tr>
       </table>
     </div>
   </div>
  <script src="http://code.jquery.com/jquery.js"></script>
  <script>
   $('#idcheckBtn').click(function() {
	   let id = $('#id').val()
	   
	   if ($('#id').val()=="") {
		   console.log('null')
		   $('#id').focus();
		   return;
	   }$.ajax({
		   url : '/project/rest/signin',
		   type: "GET",
		   dataType : "json",
		   data : {"id" : id},
		   success : function(result) {
			   let count=result;
               if(count==0)
               {
                   $('#idcheck_result').html("<font color=blue>��� ������ ���̵��Դϴ�</font>");
                   $('#ok').html('<input type=button value=Ȯ�� onclick="ok()">')
               }
               else
               {
                   $('#idcheck_result').html("<font color=red>�̹� ������� ���̵��Դϴ�</font>");
               }
		   },
		   error : function(request, status, error) {
			   console.log(request + "/" + status + "/" + error);
		   }
	   });
   })
   function ok() {
	    opener.joinFrm.id.value=$('#id').val();
	    self.close();
	}
</script>
</body>
</html>