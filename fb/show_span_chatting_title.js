var xmlhttp_span_chatting_title;
function show_span_chatting_title(id)
{
	document.getElementById("div_chatting_1").style.visibility = 'visible';
	document.getElementById("div_chatting_sender_1").style.visibility = 'visible';
	document.cookie = "receiver_id="+id+";";
	xmlhttp_span_chatting_title = new XMLHttpRequest();
	var url="show_span_chatting_title.php?id="+id;
	xmlhttp_span_chatting_title.open("GET",url,true);
	xmlhttp_span_chatting_title.onreadystatechange=stateChanged_show_span_chatting_title;
	xmlhttp_span_chatting_title.send(null);
	
	show_div_chatting_text(id);	
}
function stateChanged_show_span_chatting_title()
{
	if(xmlhttp_span_chatting_title.readyState==4)
	{
		document.getElementById('span_chatting_title_1').innerHTML=xmlhttp_span_chatting_title.responseText;
	}
}

function hide_div_chatbox()
{
	document.getElementById("div_chatting_1").style.visibility = 'hidden';
	document.getElementById("div_chatting_sender_1").style.visibility = 'hidden';
}