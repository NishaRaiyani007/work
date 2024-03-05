var xmlhttp_div_chatting_text;
function show_div_chatting_text(id)
{
	document.getElementById("div_chatting_1").style.visibility = 'visible';
	document.getElementById("div_chatting_sender_1").style.visibility = 'visible';
	
	xmlhttp_div_chatting_text = new XMLHttpRequest();
	var url="show_div_chatting_text_1.php?id="+id;
	xmlhttp_div_chatting_text.open("GET",url,true);
	xmlhttp_div_chatting_text.onreadystatechange=stateChanged_show_div_chatting_text_1;
	xmlhttp_div_chatting_text.send(null);
}
function stateChanged_show_div_chatting_text_1()
{
	if(xmlhttp_div_chatting_text.readyState==4)
	{
		document.getElementById('div_chatting_text_1').innerHTML=xmlhttp_div_chatting_text.responseText;
	}
}

function hide_div_chatbox()
{
	document.getElementById("div_chatting_1").style.visibility = 'hidden';
	document.getElementById("div_chatting_sender_1").style.visibility = 'hidden';
}