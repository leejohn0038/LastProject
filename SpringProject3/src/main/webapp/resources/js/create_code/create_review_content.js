
//��ü
function create_review_save_content(contentId, type, r_dto){
	
	console.log(contentId, type);
	var content = document.getElementById("contentBox");
	var testMainForm = create_review_form(type);
	
	var req_campingId = document.createElement("input");
	req_campingId.setAttribute("type", "text");
	req_campingId.setAttribute("name", "contentId");
	req_campingId.setAttribute("value", contentId);
	req_campingId.style.display = "none";
	
	//newMainForm.appendChild(campingId);
	
	let submit = document.createElement("input");
	let previous = document.createElement("button");
	let previousTxt = document.createTextNode("����");
	
	submit.setAttribute("type", "submit");
	submit.setAttribute("class", "btn btn-sm btn-primary");
	
	previous.setAttribute("type", "button");
	previous.setAttribute("class", "btn btn-sm btn-primary");
	previous.setAttribute("id", "btnList");
	previous.setAttribute("onclick", "back()");
	previous.appendChild(previousTxt);
	
	testMainForm.appendChild(req_campingId);
	testMainForm.appendChild(create_review_star_rank(type));
	testMainForm.appendChild(create_review_user_title(type));
	testMainForm.appendChild(create_review_user_content(type));
	testMainForm.appendChild(submit);
	testMainForm.appendChild(previous);
	
	content.appendChild(testMainForm);
}

function create_review_form(type){
	
	const newMainForm = document.createElement("form");
	
	newMainForm.setAttribute("id", "form");
	newMainForm.setAttribute("name", "form");
	newMainForm.setAttribute("method", "get");
	
	console.log(type);
	
	if(type == 1){
		newMainForm.setAttribute("action", "./reviewUpdata");
	}else{
		newMainForm.setAttribute("action", "./reviewSave");	
	}
	
	return newMainForm;
}

//����
function create_review_star_rank(type){
	
	//box
	var wrap = document.createElement("div");
	var starText = document.createTextNode("�� ķ������ ��õ�Ͻðڽ��ϱ�?");
	var container = document.createElement("div");
	var content = document.createElement("div"); 
	var starIcon = document.createElement("div");
	
	wrap.setAttribute("class", "text-center");
	container.setAttribute("class", "item-center");
	content.setAttribute("class", "rating-css");
	starIcon.setAttribute("class", "star-icon");
	
	//data
	let radio = [];
	let starLabel = [];
	for(index = 0; index < 5; index++){
		
		radio.push(document.createElement("input"));
		radio[index].setAttribute("type", "radio");
		radio[index].setAttribute("name", "starRanking");
		radio[index].setAttribute("id", "rating"+(index+1));
		radio[index].setAttribute("value", index+1);
		
		starLabel.push(document.createElement("label"));
		starLabel[index].setAttribute("for", "rating"+(index+1));
		starLabel[index].setAttribute("class", "fa fa-star");
		
		starIcon.appendChild(radio[index]);
		starIcon.appendChild(starLabel[index]);
	}
	
	content.appendChild(starIcon);
	container.appendChild(content);
	
	wrap.appendChild(starText);
	wrap.appendChild(container);
	
	return wrap;
}


//���� ������
function create_review_user_title(type, title){
	
	var content = document.createElement("div");
	content.setAttribute("class", "mb-3");
	
	let titleLabel = document.createElement("label");
	let titleLabelTxt = document.createTextNode("����");
	let titleTxt = document.createElement("input");
	
	titleLabel.setAttribute("for", "title");
	titleLabel.appendChild(titleLabelTxt);
	
	titleTxt.setAttribute("type", "text");
	titleTxt.setAttribute("class","form-control");
	titleTxt.setAttribute("name", "title");
	titleTxt.setAttribute("id","title");
	
	console.log(type);
	
	if(type == 1){
		titleTxt.setAttribute("placeholder", title);
		titleTxt.setAttribute("value", title);
	}else{
		titleTxt.setAttribute("placeholder", "������ �Է����ּ���");
	}
	
	
	content.appendChild(titleLabel);
	content.appendChild(titleTxt);
	
	return content;
}

function create_review_user_content(type, contentItem){
	
	var content = document.createElement("div");
	content.setAttribute("class", "mb-3");
	
	// start content
	let contentLabel = document.createElement("label");
	let contentLabelTxt = document.createTextNode("����");
	let contentTextarea = document.createElement("textarea");
	let contentScript = document.createElement("script");
	let contentScriptTxt = document.createTextNode("CKEDITOR.replace('content', { filebrowserUploadUrl:'/food/imageUpload.do' });");
	
	contentLabel.setAttribute("for", "contentValue");
	contentLabel.appendChild(contentLabelTxt);
	
	contentTextarea.setAttribute("class", "form-control");
	contentTextarea.setAttribute("rows", "5");
	contentTextarea.setAttribute("name", "contentValue");
	contentTextarea.setAttribute("id", "content");
	if(type == 1){
		contentTextarea.setAttribute("placeholder", contentItem);
		contentTextarea.setAttribute("value", contentItem);
	}else{
		contentTextarea.setAttribute("placeholder", "������ �Է����ּ���");	
	}
	
	contentScript.setAttribute("type", "text/javascript");
	contentScript.appendChild(contentScriptTxt);
	
	content.appendChild(contentLabel);
	content.appendChild(contentTextarea);
	content.appendChild(contentScript);
	// end content
	
	return content;
}






























