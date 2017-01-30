function anagramDetector(words) {
	var word1 = words.slice(0, 1).toString().toLowerCase();
	var word2 = words.slice(1).toString().toLowerCase();
	var firstword = word1.replace(" ","").replace("'","").split("").sort().join();
	var secondword = word2.replace(" ","").replace("'","").split("").sort().join();
	if (secondword == firstword) {
		return true;
	} else {
		return false;
	}
	return words;
}

// build loop for all words
var input = [["wisdom", "mid sow"], ["Seth Rogan", "Gathers No"], ["Reddit", "Eat Dirt"],
["Schoolmaster", "The classroom"], ["Astronomers", "Moon starer"], ["Vacation Times", "I'm Not as Active"]]

for (var x = 0; x < input.length; x++) {
	test = anagramDetector(input[x]);
	console.log(test);
}