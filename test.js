function buildDay(dayCount) {
	var dayWords = ["zeroth", "first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
	var dayText = ["", "a Partridge in a Pear Tree", "Two Turtle Doves", "Three French Hens", "Four Calling Birds", "5 Golden Rings", "6 Geese a Laying","7 Swans a Swimming","8 Maids a Milking","9 Ladies Dancing", "10 Lords a Leaping","11 Pipers Piping","12 Drummers Drumming"];
	console.log("On the " + dayWords[dayCount] + " day of Christmas\nmy true love sent to me: ")
	for(var day=dayCount; dayCount >= 1; dayCount--) {
		console.log(dayText[dayCount]);
	}

}

for(var day = 1; day <= 12; day++) {
	buildDay(day);
	console.log("\n");
}