require 'pry'

# rebuild data in ruby
pokemon_types = ["normal","fire","water","electric","grass","ice","fighting","poison","ground","flying","psychic","bug","rock","ghost","dragon","dark","steel","fairy"]

battle_chart = [[1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,0.5,0.0,1.0,1.0,0.5,1.0], #Normal Attacking
            [1.0,0.5,0.5,1.0,2.0,2.0,1.0,1.0,1.0,1.0,1.0,2.0,0.5,1.0,0.5,1.0,2.0,1.0], #Fire Attacking
            [1.0,2.0,0.5,1.0,0.5,1.0,1.0,1.0,2.0,1.0,1.0,1.0,2.0,1.0,0.5,1.0,1.0,1.0], #Water Attacking
            [1.0,1.0,2.0,0.5,0.5,1.0,1.0,1.0,0.0,2.0,1.0,1.0,1.0,1.0,0.5,1.0,1.0,1.0], #Electric Attacking
            [1.0,0.5,2.0,1.0,0.5,1.0,1.0,0.5,2.0,0.5,1.0,0.5,2.0,1.0,0.5,1.0,0.5,1.0], #Grass Attacking
            [1.0,0.5,0.5,1.0,0.5,1.0,1.0,0.5,2.0,0.5,1.0,0.5,2.0,1.0,0.5,1.0,0.5,1.0], #Ice Attacking
            [2.0,1.0,1.0,1.0,1.0,2.0,1.0,0.5,1.0,0.5,0.5,0.5,2.0,0.0,0.5,1.0,0.5,1.0], #Fighting Attacking
            [1.0,1.0,1.0,1.0,2.0,1.0,1.0,0.5,0.5,1.0,1.0,1.0,0.5,0.5,1.0,1.0,0.0,2.0], #Poison Attacking
            [1.0,2.0,1.0,2.0,0.5,1.0,1.0,2.0,1.0,0.0,1.0,0.5,2.0,1.0,1.0,1.0,2.0,1.0], # Ground Attacking
            [1.0,1.0,1.0,0.5,2.0,1.0,2.0,1.0,1.0,1.0,1.0,2.0,0.5,1.0,1.0,1.0,0.5,1.0], # Flying Attacking
            [1.0,1.0,1.0,1.0,1.0,1.0,2.0,2.0,1.0,1.0,0.5,1.0,1.0,1.0,1.0,0.0,0.5,1.0], # Psychic Attacking
            [1.0,0.5,1.0,1.0,2.0,1.0,0.5,0.5,1.0,0.5,2.0,1.0,1.0,0.5,1.0,2.0,0.5,0.5], #Bug Attacking
            [1.0,2.0,1.0,1.0,1.0,2.0,0.5,1.0,0.5,2.0,1.0,2.0,1.0,1.0,1.0,1.0,0.5,1.0], # Rock Attacking
            [0.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,2.0,1.0,1.0,2.0,1.0,0.5,1.0,1.0], #Ghost Attacking
            [1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,2.0,1.0,0.5,0.0], #Dragon Attacking
            [1.0,1.0,1.0,1.0,1.0,1.0,0.5,1.0,1.0,1.0,2.0,1.0,1.0,2.0,1.0,0.5,1.0,0.5], # Dark Attacking
            [1.0,0.5,0.5,0.5,1.0,2.0,1.0,1.0,1.0,1.0,1.0,1.0,2.0,1.0,1.0,1.0,0.5,2.0], # Steel Attacking
            [1.0,0.5,1.0,1.0,1.0,1.0,2.0,0.5,1.0,1.0,1.0,1.0,1.0,1.0,2.0,2.0,0.5,1.0]] # Fairy Attacking

#get user input
puts "Type in attack:"
	attack_type = gets.chomp

puts "Type in victim type:"
	victim_type = gets.chomp

#set loop variables equal to zero
attack_location = 0
victim_location = 0

#loop through pokemon_types to find index locations of classes
pokemon_types.each do |x|
	if attack_type == x
		attack_location = pokemon_types.index(x)
	elsif victim_type == x
		victim_location = pokemon_types.index(x)
	end
end

#match those index locations to their respective data in battle_chart
attack = battle_chart[attack_location]
defend = attack[victim_location]

#print result
defend = defend.to_s
puts attack_type + " attacking | " + victim_type + " defending | " + "Damage multiplier: " + defend + "x"