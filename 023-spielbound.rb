require 'nokogiri'
require 'open-uri'

puts "Type in a game to search for:"
search = gets.chomp

page = Nokogiri::HTML(open("http://www.spielbound.org/library?title=" + search + "&field_playing_time_min__value=&p=All&min=All&max=All&rating=All&sort_by=title&sort_order=ASC"))

games = page.css("h2").map(&:text)

games = games - ["User login"] - ["@Spielbound"]

puts "You searched for: " + search
puts "Available results:"
puts games