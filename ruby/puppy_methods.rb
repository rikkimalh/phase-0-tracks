class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    i = integer.to_i
    i.times do |x|
      puts "Woof!"
    end
  end

  def roll_over
    puts " *rolls over*"
  end

  def dog_years(human_years)
    n = human_years.to_i
    puts dog_age = n*7
  end

  def jump(num_of_jumps)
    x = num_of_jumps.to_i
     x.times do |x|
      puts "*jumps*"
    end
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

#Driver Code
object = Puppy.new
object.fetch("ball")

object2 = Puppy.new
object2.speak("4")

object3 = Puppy.new
object3.roll_over

object4 = Puppy.new
object4.dog_years(20)

object5 = Puppy.new
object5.jump(3)

class Party

	def initialize
		puts "lets partayyyy!"
	end

	def drinks(no_drinks)
		x = no_drinks.to_i
			x.times do |x|
				puts "You've had #{x} drinks!!"
		end

	def dance
		puts "I'm dancing!! "	
	end
end
end


array_example = []

y = 1

while y <50
	party_animal = Party.new
	array_example << party_animal
y+= 1
end 

array_example.each do |party_animal|
  party_animal.drinks(6)
  party_animal.dance
end

p array_example

party_animal.drinks(4)

party_animal = Party.new
party_animal.dance 

party_animal = Party.new
party_animal = Party.new


