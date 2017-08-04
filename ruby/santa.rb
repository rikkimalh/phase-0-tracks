class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender 


	def initialize(gender, ethnicity)
		
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
			p "Initializing Santa Instance..."
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
	
end 

#use array of example genders and example_ethnicities

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


#create santas with randomly selected gender and ethnicity. 

x = 100

until santas.length ==  x 

santa_gender = example_genders.sample 
santa_ethnicity = example_ethnicities.sample
#Randomly set Santa age between 0 and 140
santa_age = [*0..140].sample

#Run program at least 100 times and display all data stored in array. 

santas += [santa_gender, santa_ethnicity, santa_age]


p "Gender is #{santa_gender}"
p "Ethnicity is #{santa_ethnicity}"
p " Age is #{santa_age}"
p "*******************"
x += 1

end






santa = Santa.new("male", "Indian")

santa.speak
santa.eat_milk_and_cookies("chocolate chip")
santa.age1(8)
santa.celebrate_birthday
santa.get_mad_at('Dasher')

santa.gender = "Santa has turned into a dragon!"
puts "#{santa.age}"

puts "#{santa.gender}."

