require 'pry'
require 'net/http'
require 'json'

puts "Type in a topic to see it's opening paragraph on Wikipedia:"
topic = gets.chomp

topic = topic.gsub(" ", "&20")

location = "https://en.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&titles=" + topic

uri = URI(location)
response = Net::HTTP.get(uri)
response = JSON.parse(response)
text = response["query"]["pages"]["extract"]

# first_paragraph = text.scan( /<p>([^>]*)<\/p>/).last.first

puts text