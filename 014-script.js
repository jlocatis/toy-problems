window.addEventListener("load", function() {

	allnames = document.getElementsByTagName("b");
	cordelia = [];
	for (x = 0; x < allnames.length; x++) {
		if (allnames[x].textContent == "CORDELIA") {
			current_line = allnames[x].parentElement.nextElementSibling.textContent;
			if (current_line.includes("?")) {
				cordelia.push(current_line);
			}
		}
	}
	
	for (i = 0; i < cordelia.length; i++) {
		print_line = cordelia[i];
		console.log(print_line);
	}
});