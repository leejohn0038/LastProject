// PopUp ����
const popUpMenu = document.getElementById('popUpMenu');
const xhttpSearchID = new XMLHttpRequest();

document.addEventListener('click', (e) => {
	const className = e.target.className.substring(0, 'userId pointer'.length);
	const targetId = e.target.id;
	console.log('Ŭ����');
	console.log('className: ', className);
	
	if (className === 'userId pointer') {

		popUpMenu.style.position = 'absolute';
		popUpMenu.style.zIndex = 99999;
		popUpMenu.style.left = `${e.pageX}px`;
		popUpMenu.style.top = `${e.pageY}px`;
		popUpMenu.style.display = 'block';
	} else {
		popUpMenu.style.display = 'none';
	}
	
	const memberPost = document.getElementById('memberPost');
	
	memberPost.addEventListener('click', (e) => {
		xhttpSearchID.open('GET', `/project/rest/individual?member_id=${targetId}`);
		xhttpSearchID.send();
	});
	
	
});
const individual = document.getElementById('individual');
var data = '';
xhttpSearchID.addEventListener('readystatechange', (e) => {
	const readyState = e.target.readyState;
	const status = e.target.status;
	
	if (readyState == 4 && status == 200)  {
		const individualList = JSON.parse(e.target.responseText);		
		const modalTitle = document.getElementById('staticBackdropLabel');
		modalTitle.innerText = `${individualList[0].member_id}���� �ۼ���`
		
		if (getCookie('DarkMode') == 'N') {
			for (var i = 0; i < individualList.length; ++i) {
				data +=	mkIndividual(
					individualList[i].contents_category, individualList[i].post_id, individualList[i].title, 
					individualList[i].member_id, individualList[i].reg_date, individualList[i].views
				)
			};
			individual.innerHTML = 
			`<table class="table table-hover">
				<thead>
					<tr>
					  <th class="col-1" scope="col">#</th>
					  <th class="col-1" scope="col">�з�</th>
					  <th class="col-6 text-start" scope="col">����</th>
					  <th class="col-1" scope="col">�ۼ���</th>
					  <th class="col-1" scope="col">�ۼ���</th>
					  <th class="col-1" scope="col">��ȸ��</th>
					</tr>
				</thead>
				<tbody>${data}</tbody>
			</table>`;
		} else if (getCookie('DarkMode') == 'Y') {
			for (var i = 0; i < individualList.length; ++i) {
				data +=	mkIndividualDark (
					individualList[i].contents_category, individualList[i].post_id, individualList[i].title, 
					individualList[i].member_id, individualList[i].reg_date, individualList[i].views
				)
			};
			individual.innerHTML = 
			`<table class="table table-hover">
				<thead>
					<tr>
					  <th class="col-1 darkmodeFont" scope="col">#</th>
					  <th class="col-1 darkmodeFont" scope="col">�з�</th>
					  <th class="col-6 text-start darkmodeFont" scope="col">����</th>
					  <th class="col-1 darkmodeFont" scope="col">�ۼ���</th>
					  <th class="col-1 darkmodeFont" scope="col">�ۼ���</th>
					  <th class="col-1 darkmodeFont" scope="col">��ȸ��</th>
					</tr>
				</thead>
				<tbody>${data}</tbody>
			</table>`;
		}
		
	}
});

const modalBtn = document.getElementById('modalBtn');
modalBtn.addEventListener('click', (e) => {
	data = '';
});

// ���αۺ���
function mainContents(post_id) {
	location.href = `/project/main_paragraph?post_id=${post_id}`
};

// �����ۼ��� ���� html���� ����
function mkIndividual(contents_category, post_id, title, member_id, reg_date, views) {
	return `<tr>
				<td>${post_id}</td>
				<td>${contents_category}</td>
				<td id="${post_id }" class="pointer text-start" onClick="mainContents(${post_id})">${title }</td>
				<td class="userId pointer" id="${member_id }">${member_id }</td>
				<td>${reg_date }</td>
				<td>${views }</td>
			</tr>`;
};

function mkIndividualDark(contents_category, post_id, title, member_id, reg_date, views) {
	return `<tr>
				<td class="darkmodeFont">${post_id}</td>
				<td class="darkmodeFont">${contents_category}</td>
				<td id="${post_id }" class="pointer text-start darkmodeFont" onClick="mainContents(${post_id})">${title }</td>
				<td class="darkmodeFont" id="${member_id }">${member_id }</td>
				<td class="darkmodeFont">${reg_date }</td>
				<td class="darkmodeFont">${views }</td>
			</tr>`;
};

function getCookie(cname) {        
  var name = cname + "=";
  var decodedCookie = decodeURIComponent(document.cookie);
  var ca = decodedCookie.split(';');
  for(var i = 0; i <ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}

