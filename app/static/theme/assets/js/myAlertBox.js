// This is a customerized alert message box

function CustomAlert(){
		this.render = function(dialog){
			var winW = window.innerWidth;
			var winH = window.innerHeight;
			var dialogoverlay = document.getElementById('dialogoverlay');
			var dialogbox = document.getElementById('dialogbox');
			dialogoverlay.style.display = "block";
			dialogoverlay.style.height = winH+"px";
			
			dialogbox.style.left = (winW/2) - (550 * .5)+"px";
			dialogbox.style.top = "200px";
			$("#dialogbox").fadeIn(300)
			document.getElementById('dialogboxfoot').innerHTML = '<button type="button" onclick="myAlertBox.ok()"'+
																'class="btn btn-default btn-sm" >submit</button>'+
																'<button type="button" class="btn btn-default btn-sm"'+
															   'onclick="myAlertBox.cancel()" >cancel</button>';
		}
		this.ok = function(){
		
		}
		this.cancel = function(){
			document.getElementById('dialogbox').style.display = "none";
			document.getElementById('dialogoverlay').style.display = "none";
	
		}
}
var myAlertBox = new CustomAlert();
