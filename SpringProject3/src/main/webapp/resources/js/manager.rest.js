const camp = document.getElementById('camp');
const camp_sub = document.getElementById('camp_submit');
const camp_srch = document.getElementById('camp_search');
const camp_selc = document.getElementById('camp_selc');
const camp_add = document.getElementById('camp_add');
const search_tab = document.getElementById('pills-home-tab');
const add_tab = document.getElementById('pills-profile-tab');

$(document).ready(function(){
	uri = `searchTy=condition&${camp_selc.value}=${camp_srch.value}`
})

$('#member').click(function() {
		getMemberList(1);
})

$('#comment').click(function() {
	getCommentList(1);
})

function getCommentList(nowPage) {
	$("#comment_body").empty();

	$.ajax({
	  url: `${Url}/manager/comment?nowPage=${nowPage}`,
	  dataType: "json",
	  type: "GET"
  	}).done(res => {
  		res.forEach(comment => {
			
			$('#comment_body').append('<tr>' 
			+ '<td>' + comment.rn + '</td>' 
			+ '<td>' + comment.comment_id + '</td>' 
			+ '<td>' + comment.member_id + '</td>' 
			+ '<td>' + comment.comments + '</td>' 
			+ '<td>' + comment.decl + '</td>'
			+ '<td><button type="button" class="btn btn-link" onclick="blind(this)">����ε�</button></td>'
			+ '</tr>');				
		})
		if (res.length > 0) {			
			total = res[0].total
		} else {
			total = 0;
		}
		console.log(total)
		pagination(total, nowPage, 10, 10);
		drawPage('member');
	});	
}

function blind(btn) {
	var tr = $(btn).parent().parent();
	var td = tr.children();
	var comment_id = td.eq(1).text();
	var member_id = td.eq(2).text();
	var comments = td.eq(3).text();
	console.log(comment_id + '/' + member_id + '/' + comments);
	const data = JSON.stringify({
		"comment_id" : comment_id,
		"member_id" : member_id,
		"comments" : comments
		});
	$.ajax({
	   url: `${Url}/manager/comment`,
		  type: "put",
		  dataType: "json",
		  data : data,
		  contentType : 'application/json',
		  success : function(result) {
			if(result == 1) {
		      	alert("����ε� ó���� �Ϸ��߽��ϴ�");				
			} else {
				alert("�̹� ����ε� ó���� ���̰ų� ����ε� ó���� ���� ���߽��ϴ�");
			}
	    },
	    error: function(request, status, error) {
	        console.log(request + "/" + status + "/" + error);
	    }
	});	
}


function getMemberList(nowPage) {
	$("#member_body").empty();

	$.ajax({
	  url: `${Url}/manager/member?nowPage=${nowPage}`,
	  dataType: "json",
	  type: "GET"
  	}).done(res => {
  		res.forEach(member => {

			$('#member_body').append('<tr class="member_row">' 
			+ '<td>' + member.rn + '</td>' 
			+ '<td>' + member.member_name + '</td>' 
			+ '<td>' + member.member_id + '</td>' 
			+ '<td>' + member.addr1 + '</td>' 
			+ '<td>' + member.email + '</td>'
			+ '</tr>');				
		})
		if (res.length > 0) {			
			total = res[0].total
		} else {
			total = 0;
		}

		pagination(total, nowPage, 10, 10);
		drawPage('member');
	});	
}


camp_sub.addEventListener('click', () => {
	uri = `searchTy=condition&${camp_selc.value}=${camp_srch.value}`
	getCampingList(1);
})

camp.addEventListener('click', () => {
	getCampingList(1);
})

camp_add.addEventListener('click', () => {
	setData();
	insertCampingInfo();
})


function campingBtn(btn) {
	var tr = $(btn).parent().parent();
	var td = tr.children();
	var contentId = td.eq(2).text();
	if (btn.innerText === '����') {
		makeUpdateWindow(contentId);
	} else {
		deleteCamping(contentId);
	}
}
 
function makeUpdateWindow(contentId) {
	var popupWidth = 1000;
	var popupHeight = 800;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);
	var popupY= (window.screen.height / 2) - (popupHeight / 2);
	
	window.open(`updateWindow?contentId=${contentId}`, 'update', 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
}

function deleteCamping(contentId) {
	console.log(contentId);
	$.ajax({
	  url: `${Url}/manager/camp`,
	  type: "DELETE",
	  dataType: "text",
	  data : contentId,
	  success : function(result) {
      	alert("ķ���� ���� �����߽��ϴ�");
    },
    error: function(request, status, error) {
        console.log(request + "/" + status + "/" + error);
    }
  });
}

function insertCampingInfo() {
	const data = {
	addr1 : addr1,
	addr2 : addr2,
	doNm : sido,
	sigunguNm : sigungu,
	facltNm : siteNm,
	lineIntro : line
	}
	console.log(`${Url}/manager/camp`);
	$.ajax({
	  url: `${Url}/camp`,
	  type: "POST",
	  dataType: "json",
	  data : data,
	  success : function(result) {
      	alert("ķ������ �߰��߽��ϴ�");
      	window.location.reload(true);
    },
    error: function(request, status, error) {
        console.log(request + "/" + status + "/" + error);
    }
  });
}

function getCampingList(nowPage) {
	$("#camp_body").empty();

	$.ajax({
	  url: `${Url}/manager/camp?nowPage=${nowPage}&${uri}`,
	  dataType: "json",
	  type: "GET"
  	}).done(res => {
  		res.forEach(camping => {
			
			$('#camp_body').append('<tr class="camping_row">' 
			+ '<td>' + camping.rn + '</td>' 
			+ '<td>' + camping.facltNm + '</td>' 
			+ '<td>' + camping.contentId + '</td>' 
			+ '<td>' + camping.rn + '</td>' 
			+ '<td>' + camping.rn + '</td>'
			+ '<td><button type="button" class="btn btn-link" onclick="campingBtn(this)">����</button>'
			+ '<button type="button" class="btn btn-link" onclick="campingBtn(this)">����</button></td>'  
			+ '</tr>');				
		})
		if (res.length > 0) {			
			total = res[0].total
		} else {
			total = 0;
		}
		//�� �Խñ�, ���� ������, �������� �Խñ� ��, ������ ����
		pagination(total, nowPage, 10, 10);
		drawPage('camping');
	});	
}




function drawPage(tab) {
	$("#paging").empty();
	$('#paging').append('<li onclick="paging(this)"><a>&lt;&lt;</a></li>')
	$('#paging').append('<li onclick="paging(this)"><a>&lt;</a></li>')
	for(var p = startPage; p <= endPage; ++p) {
		if (p == nowPage) {
			$('#paging').append(`<li class="active" onclick="paging(this)"><a>` + p + '</a></li>')			
		} else {
			$('#paging').append(`<li onclick="paging(this)"><a>` + p + '</a></li>')			
		}
		
	}
	$('#paging').append('<li onclick="paging(this)"><a>&gt;</a></li>')
	$('#paging').append('<li onclick="paging(this)"><a>&gt;&gt;</a></li>')
	$('#paging').addClass(tab);
}


function paging(li) {
	if($('#paging').attr('class') === 'camping') {
		if(li.innerText === '<<'){
			getCampingList(1);
		} else if (li.innerText === '<') {
			if(startPage != 1) {
				getCampingList(startPage - 1);
			} else {
				getCampingList(startPage);
			}
		} else if (li.innerText === '>>') {		
			getCampingList(lastPage);
		} else if (li.innerText === '>') {
			if(endPage != lastPage) {
				getCampingList(endPage + 1);
			} else {
				getCampingList(endPage);
			}
		} else {
			getCampingList(li.innerText);
		}
	}
}
