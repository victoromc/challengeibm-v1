function createAudioElementMe(blob) {
	var url = URL.createObjectURL(blob);
	var audio = document.createElement("audio");
	var div = document.createElement("div");
	div.classList.add("audiome")
	audio.controls = true;
	audio.src = url;
	
	div.appendChild(audio);
	var chat = document.querySelector(".chat-container");
	chat.appendChild(div);
	scrollDivDown(chat);
}
function createAudioElement(blob) {
	var url = URL.createObjectURL(blob);
	var audio = document.createElement("audio");
	var div = document.createElement("div");
	audio.controls = true;
	audio.src = url;
	
	div.appendChild(audio);
	var chat = document.querySelector(".chat-container");
	chat.appendChild(div);
	scrollDivDown(chat);
}

function callBot(msg) {
  var xhr = new XMLHttpRequest();
  xhr.open("POST", "v1", true);
  xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded; charset=utf-8");
  xhr.addEventListener("load", function() {
    if (xhr.status == 200) {
      // Codigo de sucesso
      var respostas = JSON.parse(xhr.responseText);
      var resultSend = respostas[0];
      sendMessageToVoice(resultSend);
    } else {
      // Codigo de deu ruim!
      console.log(xhr.status);
      console.log(xhr.responseText);
    }
  });
  var data = "question=" + msg;
  xhr.send(data);
}


function sendMessageToVoice(msg) {
  var xhr = new XMLHttpRequest();
  xhr.open("POST", "tts", true);
  xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded; charset=utf-8");
  xhr.addEventListener("load", function() {
    if (xhr.status == 200) {
      // Codigo de sucesso
      var blob = new Blob([xhr.response], { type: "audio/wav" });
      createAudioElement(blob);
    } else {
      // Codigo de deu ruim!
      console.log(xhr.status);
      console.log(xhr.responseText);
    }
  });
  xhr.responseType = "blob";
  var data = "question=" + msg;
  xhr.send(data);
}
