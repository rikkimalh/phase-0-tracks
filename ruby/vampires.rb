
puts "How many employees will be processed?"

processed_employees = gets.chomp.to_i

while processed_employees > 0 
processed_employees = processed_employees - 1

	
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?" 
dob_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance? (yes/no)"
insurance_enroll = gets.chomp

allergies = ""
until 
	allergies == "done"
 	puts "Do you have any allergies? Please list them all here. 
	When you are finished, type 'done'"
	allergies = gets.chomp
	
end

year_age = 2017 - dob_year

puts "Here are your survey results:
Name: #{name}
Age: #{age}
Birth Year: #{dob_year}
Garlic Bread: #{garlic_bread}
Insurance: #{insurance_enroll}
"

if 
	age == dob_year && garlic_bread == "yes" || insurance_enroll == "yes"
	puts "Probably not a vampire."
elsif 	
	age != dob_year && garlic_bread == "no" || insurance_enroll =="no"
	puts "Probably a vampire."
elsif 
	allergies == sunshine
	puts "Probably a vampire"
elsif 
	age != dob_year && garlic_bread == "no" && insurance_enroll =="no"
	puts "Almost certainly a vampire."
elsif 
	name == "Drake Cula" or name == "Tu Fang"
	puts "Definitely a vampire."
else 
	puts "Results inconclusive."
end
end

puts "Actually, never mind! 
What do these questions have to do with anything? 
Let's all be friends."