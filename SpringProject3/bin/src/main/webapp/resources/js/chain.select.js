$('document').ready(function() {
	   var area0 = ["��/�� ����","�����","��õ��","������","���ֽ�","�뱸��","����","�λ��","��⵵","������","��û�ϵ�","��û����","����ϵ�","���󳲵�","���ϵ�","��󳲵�","���ֵ�"];
	   var area1 = ["��ü","������","������","���ϱ�","������","���Ǳ�","������","���α�","��õ��","�����","������","���빮��","���۱�","������","���빮��","���ʱ�","������","���ϱ�","���ı�","��õ��","��������","��걸","����","���α�","�߱�","�߶���"];
	   var area2 = ["��ü","��籸","����","������","����","����","����","������","�߱�","��ȭ��","������"];
	   var area3 = ["��ü","�����","����","����","������","�߱�"];
	   var area4 = ["��ü","���걸","����","����","�ϱ�","����"];
	   var area5 = ["��ü","����","�޼���","����","�ϱ�","����","������","�߱�","�޼���"];
	   var area6 = ["��ü","����","����","�ϱ�","�߱�","���ֱ�"];
	   var area7 = ["��ü","������","������","����","����","������","�λ�����","�ϱ�","���","���ϱ�","����","������","������","������","�߱�","�ؿ�뱸","���屺"];
	   var area8 = ["��ü","�����","��õ��","������","���ֽ�","������","������","������","�����ֽ�","����õ��","��õ��","������","������","�����","�Ȼ��","�ȼ���","�Ⱦ��","���ֽ�","�����","���ν�","�ǿս�","�����ν�","��õ��","���ֽ�","���ý�","��õ��","�ϳ���","ȭ����","����","����","���ֱ�","��õ��"];
	   var area9 = ["��ü","������","���ؽ�","��ô��","���ʽ�","���ֽ�","��õ��","�¹��","������","�籸��","��籺","������","������","������","ö����","��â��","ȫõ��","ȭõ��","Ⱦ����"];
	   var area10 = ["��ü","��õ��","û�ֽ�","���ֽ�","���걺","�ܾ籺","������","������","��õ��","������","����","��õ��","û����"];
	   var area11 = ["��ü","����","���ֽ�","�����","���ɽ�","�����","�ƻ��","õ�Ƚ�","�ݻ걺","������","�ο���","��õ��","���ⱺ","���걺","û�籺","�¾ȱ�","ȫ����"];
	   var area12 = ["��ü","�����","������","������","�ͻ��","���ֽ�","������","��â��","���ֱ�","�ξȱ�","��â��","���ֱ�","�ӽǱ�","�����","���ȱ�"];
	   var area13 = ["��ü","�����","���ֽ�","������","��õ��","������","������","���ﱺ","���","���ʱ�","��籺","���ȱ�","������","�žȱ�","������","���ϱ�","�ϵ���","�强��","���ﱺ","������","����","�س���","ȭ����"];
	   var area14 = ["��ü","����","���ֽ�","���̽�","��õ��","�����","���ֽ�","�ȵ���","���ֽ�","��õ��","���׽�","���ɱ�","������","��ȭ��","���ֱ�","������","���籺","��õ��","�︪��","������","�Ǽ���","û����","û�۱�","ĥ�"];
	   var area15 = ["��ü","������","���ؽ�","�����","�о��","��õ��","����","���ֽ�","���ؽ�","â����","�뿵��","��â��","������","���ر�","��û��","�Ƿɱ�","â�籺","�ϵ���","�Ծȱ�","�Ծ籺","��õ��"];
	   var area16 = ["��ü","��������","���ֽ�","�����ֱ�","�����ֱ�"];

	 

	 // ��/�� ���� �ڽ� �ʱ�ȭ
	
	
	
	 $("select[name^=sido]").each(function() {
	  $selsido = $(this);
	  $.each(eval(area0), function() {
		if (this == '��/�� ����') {			
		   $selsido.append('<option value="">' +this+ '</option>');
		} else {		
		   $selsido.append("<option value='"+this+"'>"+this+"</option>");
		}
	   
	  });
	  $selsido.next().append('<option value="">��/�� ����</option>');
	 });

	 

	 // ��/�� ���ý� ��/�� ����

	 $("select[name^=sido]").change(function() {
		  var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // ���������� ���� Array
		  var $gugun = $(this).next(); // ���ÿ��� ���� ��ü
		  $("option",$gugun).remove(); // ���� �ʱ�ȭ
	
		  if(area == "area0")
		   	$gugun.append("<option value=''>��/�� ����</option>");
		  else {
		   	$.each(eval(area), function() {
				if(this == '��ü') {
					console.log(this);
					$gugun.append('<option value="">' + this + '</option>');
				} else {				
			    	$gugun.append("<option value='"+this+"'>"+this+"</option>");
				}
		  	 });
		  }
	 });
});