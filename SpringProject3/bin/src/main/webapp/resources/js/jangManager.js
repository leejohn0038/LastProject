const joinProhibitSwitch = document.getElementById('joinProhibitSwitch');
const joinProhibitSentence = document.getElementById('joinProhibitSentence');

let joinProhibit = false;

if (joinProhibit == false) {
	joinProhibitSwitch.checked = false;
	joinProhibitSentence.innerHTML = '�������';
} else {
	joinProhibitSwitch.checked = true;
	joinProhibitSentence.innerHTML = '���Ա���';
}

joinProhibitSwitch.addEventListener('change', (e) => {
	
	if (joinProhibitSwitch.checked == true) {
		joinProhibit = true;
		console.log("ȸ������ ���")
		joinProhibitSentence.innerHTML = '�������';
		
		
	} else {
		console.log("ȸ������ ����")
		joinProhibit = false;
		joinProhibitSentence.innerHTML = '���Ա���';
	}
});

		
