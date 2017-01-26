function anagramDetector(words) {
	var word1 = words.slice(0, 1).toString().toLowerCase();
	var word2 = words.slice(1).toString().toLowerCase();
	var firstword = word1.replace(" ","").split("").sort().join();
	var secondword = word2.replace(" ","").split("").sort().join();
	if (secondword == firstword) {
		return true;
	} else {
		return false;
	}
	return words;
}

var test1 = ["wisdom", "mid sow"];
var test2 = ["Seth Rogan", "Gathers No"]

testWord = anagramDetector(test1);
testWord2 = anagramDetector(test2);

console.log(testWord);
console.log(testWord2);