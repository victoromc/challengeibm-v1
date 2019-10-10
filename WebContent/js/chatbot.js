var bot = document.getElementById("imgBot");
bot.addEventListener("click",function(){
	var chat = document.getElementById("chatbot");
	if (chat.style.display != 'none'){
		chat.style.display = 'none';
		bot.style.backgroundColor = '#ddd';
	} else {
		chat.style.display = 'block';
		bot.style.backgroundColor = '#088BF7';
	}
})

/*function play(id)
{
	var el = document.getElementById(id);
	if( el.style.display != 'none' ){
		el.style.display = 'none';
  }
	else{
		el.style.display = 'block';
}};
*/