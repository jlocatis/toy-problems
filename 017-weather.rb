require 'net/http'
require 'json'
require 'pry'

puts "Get a weather report for your location!"
puts "For reference, Omaha's lat/long is 41.2524, -95.9980"

puts "Enter your current latitude:"
latitude = gets.chomp

puts "Enter your current longitude:"
longitude = gets.chomp

def getWeather(latitude, longitude)
	poke_info = []
	weather_info = 'https://api.darksky.net/forecast/9bb3af1d238b10e89a37f0d9c510dd1e/' + latitude + ',' + longitude
	uri = URI(weather_info)
	response = Net::HTTP.get(uri)
	current_weather = JSON.parse(response)
	return current_weather
end

current_weather = getWeather(latitude, longitude)
current_weather = current_weather["daily"]["data"][0]

high = current_weather["temperatureMax"].to_s
low = current_weather["temperatureMin"].to_s
yesterday_weather = 0
precip_chance = current_weather["precipIntensity"]


puts "Todays high will be " + high + "°"
puts "Todays low will be " + low + "°"

if precip_chance == 0
	puts "Today's chance of precipitation is 0%! Go outside!"
elsif precip_chance >= 0 && precip_chance <= 2
	puts "You probably want to bring an umbrella just in case."
else
	puts "Bring an umbrella. You're going to get wet."
end

# yesterday weather
# precip change for umbrella, fix this
# add auto for omaha