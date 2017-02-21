require 'nokogiri'
require 'open-uri'
require 'pry'

puts "Type in a topic to see it's opening paragraph on Wikipedia:"
topic = gets.chomp

topic = topic.gsub(" ", "_")

doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/" + topic))

text = doc.css("p").first.text

puts text