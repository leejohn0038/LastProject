const writeSavBtn = document.getElementById('writeSavBtn');
const writeForm = document.getElementById('writeForm');

CKEDITOR.replace('writeEditor', {
	language: 'ko',
		// image upload
	filebrowserUploadUrl: './upload/image',
	//filebrowserImageUploadUrl: './upload/image?type=Images',
	filebrowserUploadMethod: 'form'
});

writeSavBtn.addEventListener('click', (e) => {
	
	const title = document.getElementById('title').value;
	const writeCategory = document.getElementById('writeCategory').value;
	const board_classNum = document.getElementById('board_class').value;
	const board_class = board_classNum == 0 ? 'freeBoard' : 'supportBoard';
	const edit = document.getElementById('edit').value;
	const post_id = document.getElementById('post_id').value;
	var contents = CKEDITOR.instances.writeEditor.getData();
	
	console.log("Ŭ���� ����: ", title);
	console.log("Ŭ���� ī�װ�: ", writeCategory);
	console.log("Ŭ���� �Խ�������: ", board_class);
	console.dir("Ŭ���� ����: ",  contents);
	console.log("Ŭ���� ��������: ", edit);
	console.log("Ŭ���� �Խñ۹�ȣ: ", post_id);
	
	var writeContents = [title, contents, board_class, writeCategory, post_id];
	
	if (edit) {
		console.log("������ Ʈ����: " , edit);
		writeContents.push(edit);
		console.log("������ �߰��� �迭: ", writeContents);
	}
	
	console.log("post������ ����");
	writeSend('./write', {'contents': writeContents});
	
});

function writeSend(url, params) {
	var form = document.createElement('form');
	form.setAttribute('method', 'POST');
	form.setAttribute('action', url);
	console.log("map ���� ����");
	for (var key in params) {
		var hiddenField = document.createElement('input');
		hiddenField.setAttribute('type', 'hidden');
		hiddenField.setAttribute('name', key);
		hiddenField.setAttribute('value', params[key]);
		form.appendChild(hiddenField);
	}
	
	console.log("map ���� ����");
	document.body.appendChild(form);
	form.submit();
};
