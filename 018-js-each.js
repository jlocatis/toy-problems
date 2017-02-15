window.addEventListener("load", function() {
	document.getElementById("click_me").addEventListener("click", whatever);
	document.getElementById("submit_whatever").addEventListener("click", morewhatever);
});

function whatever(){
	var array = ["whatever", "more whatever", "more more whatever", "some more whatever", "getting sick of this?",
		"I know I am", "this just keeps going"];

	array.forEach(function(x) {
		alert(x);
	});
}

function morewhatever() {
	var stuff = document.getElementById("whatever").value;
	stuff = stuff.replace(" ", "");
	stuff = stuff.split(",");
	
	stuff.forEach(function(x) {
		alert(x);
	});
}