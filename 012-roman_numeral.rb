require 'pry'

#define integer
number = 1

#split integer into array, sepearate
#loop through integer array and match numbers to roman numeral strings
#combine roman numeral string

number = number.to_s
newArray = number.split('')
romanNumeralArray = []

newArray.each do |x|
	if newArray[x] == "1"
		romanNumeralArray << "I"
	elsif newArray[x] == "2"
		romanNumeralArray << "II"
	elsif newArray[x] == "3"
		romanNumeralArray << "III"
	elsif newArray[x] == "4"
		romanNumeralArray << "IV"
	elsif newArray[x] == "5"
		romanNumeralArray << "V"
	elsif newArray[x] == "6"
		romanNumeralArray << "VI"
	elsif newArray[x] == "7"
		romanNumeralArray << "VII"
	elsif newArray[x] == "8"
		romanNumeralArray << "VIII"
	elsif newArray[x] == "9"
		romanNumeralArray << "IX"
	end
end

romanNumeral = romanNumeralArray.join('')
puts romanNumeral