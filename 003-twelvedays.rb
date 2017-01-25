day = ['first', 'second', 'third', 'fourth', 'fifth', 'sixth', 'seventh', 'eighth', 'ninth',
'tenth', 'eleventh', 'twelfth']

songElements = ['1 Partridge in a Pear Tree', '2 Turtle Doves', '3 French Horns', 
'4 Calling Birds', '5 Golden Rings', '6 Geese a Laying', '7 Swans a Swiming']

currentSong = []

#def christmasSong(song)
	day.each do |day|
		puts "On the " + day + " day of Christmas \nmy true love sent to me:"
		songElements.each do |song|
			puts song
		end
	end


#end

#christmasSong(day)