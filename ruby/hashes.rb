#Designer is prompted to enter the user data
#data entries:
#Clients name, age, address, favorite color, decor style, favorite superhero, likes chandeliers?
#allergies? Sandproof products?
#Once data has been received, convert user input to appropriate data type
# print data
#if designer says "none", skip question or leave blank
#if designer enters new value, program should ask for new value

puts "What is the clients name?"
client_name = gets.chomp

puts "What is the clients age?"
client_age = gets.chomp

puts "What is the clients favorite color?"
favorite_color = gets.chomp

puts "What is the clients decor style?"
decor_style = gets.chomp

puts "what is the clients favorite superhero?"
favorite_superhero = gets.chomp

puts "Does the client like chandeliers? (y/n)"
chandeliers = gets.chomp

puts "Does the client require any sandproof products? (y/n)"
sandproof_products = gets.chomp


puts "Here is what you have entered:"

client_preferences = {
	name: (client_name), 
	age: (client_age),
	fav_color: (favorite_color),
	decor: (decor_style),
	superhero: (favorite_superhero),
	chandeliers: (chandeliers),
	sandproof: (sandproof_products),
}	


p client_preferences

puts "Is there anything you would like to change? Please state what you would like to change or enter no to exit"
response = gets.chomp

if 	
	response == "name" 
	puts "What would you like to change your name to?"
	client_preferences.update({name: gets.chomp})
elsif 
	response == "age"
	puts "What would you like to change your age to?"
	client_preferences.update({age: gets.chomp})
elsif 
	response == "fav_color"
	puts "What would you like to change your favorite color to?"
	client_preferences.update({fav_color: gets.chomp})
elsif 
	response =="decor"
	puts "What would you like to change your decor to?"
	client_preferences.update({decor: gets.chomp})
elsif 
	response == "superhero"
	puts "What would you like to change your favorite superhero to?"
	client_preferences.update({superhero: gets.chomp})
elsif 
	response == "chandeliers"
	puts "What would you like to change your chandelier preference to?"
	client_preferences.update({chandeliers: gets.chomp})
elsif 
	response =="sandproof"
	puts "What would you like to change your sandproof preference to?"
	client_preferences.update({sandproof: gets.chomp})

else puts "Thank you for your input."
end 

puts "Here is your information. Thank you."
puts client_preferences