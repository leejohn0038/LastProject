// PopUp 생성
const popUpMenu = document.getElementById('popUpMenu');
const xhttpSearchID = new XMLHttpRequest();

document.addEventListener('click', (e) => {
	const className = e.target.className;
	const targetId = e.target.id;

	
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
		modalTitle.innerText = `${individualList[0].member_id}님의 작성글`
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
				  <th class="col-1" scope="col">분류</th>
				  <th class="col-6 text-start" scope="col">제목</th>
				  <th class="col-1" scope="col">작성자</th>
				  <th class="col-1" scope="col">작성일</th>
				  <th class="col-1" scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>${data}</tbody>
		</table>`;
		
	}
});

const modalBtn = document.getElementById('modalBtn');
modalBtn.addEventListener('click', (e) => {
	data = '';
});

// 메인글보기
function mainContents(post_id) {
	location.href = `/project/main_paragraph?post_id=${post_id}`
};

// 개인작성글 보기 html구문 생성
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

// 다크모드


