//webkitURL é legado 
URL = window.URL || window.webkitURL;
// stream é criado a partir getUserMedia()
var gumStream;
// Objeto do Record.js
var rec;
// MediaStreamAudioSourceNode
var input;
// criar novo AudioContext
var AudioContext = window.AudioContext || window.webkitAudioContext; // Classe
var audioContext; // objeto
// selecionar os botoes

var btnRecord = document.querySelector("#recordButton");

btnRecord.addEventListener("mousedown", function(event) {
	event.preventDefault();
	constraints = {
			audio : true,
			video : false
	}

	navigator.mediaDevices.getUserMedia(constraints).then(function(stream) {
		audioContext = new AudioContext;
		gumStream = stream;
		input = audioContext.createMediaStreamSource(stream);
		rec = new Recorder(input, {
			numChannels : 1
		});
		rec.record();
	}).catch(function(err){
		console.log(err);
		btnRecord.disabled = false;
	});
});

btnRecord.addEventListener("mouseup", function(event) {
	event.preventDefault();
	
	rec.stop();
	gumStream.getAudioTracks()[0].stop();
	rec.exportWAV(generateBlob);
});


function generateBlob(blob) {
	  createAudioElementMe(blob);
	  sendBlobToText(blob);
	}

function sendBlobToText(blob) {
	  var xhr = new XMLHttpRequest();
	  xhr.open("POST", "stt", true);
	  xhr.setRequestHeader("Content-type", "audio/wav");
	  xhr.addEventListener("load", function() {
	    if (xhr.status == 200) {
	      // Deu bom
	    
	      var resposta = JSON.parse(xhr.responseText);
	      if(resposta.length > 0){
	    	  var resultStt = resposta[0].alternatives[0].transcript;
		      console.log(resultStt);
		      callBot(resultStt);
	      }
	      else {
	    	  console.log("nenhum retorno valido")
	      }
	    } else {
	      // Deu ruim
	      console.log(xhr.status);
	      console.log(xhr.responseText);
	    }
	  });
	  xhr.send(blob);
	}






