class Santa




	def initialize(gender, ethnicity)
		p "Initializing Santa Instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak
		puts "Ho, Ho, Ho! Haaaaapy Holidays!"
		puts "Santa is #{@ethnicity}"
	puts "Santa is #{@gender}"
	end 

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!!"
		
	end 
	
	def age1(age)
		@age1= age
		puts "Santa is #{age} years old"
	end

	def celebrate_birthday
		@age = @age1 += 1
		puts "Happy Birthday! You're now #{@age} years old!"
	end


	def get_mad_at(bad_reindeer)
		@reindeer_ranking.delete_if {|reindeer| reindeer == bad_reindeer}
		@reindeer_ranking.insert(-1, bad_reindeer)
		puts "#{bad_reindeer}"

	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age
	end 

	def ethnicity
		@ethnicity
	end
end 






santa = Santa.new("male", "Indian")

santa.speak
santa.eat_milk_and_cookies("chocolate chip")
santa.age1(8)
santa.celebrate_birthday
santa.get_mad_at('Dasher')

santa.gender = "Santa has turned into a dragon!"

puts "#{santa.gender}."


#object = Santa.new
#object.speak
#object.eat_milk_and_cookies("chocolate Chip")
