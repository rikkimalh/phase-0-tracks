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
	client_preferences.inject({name: gets.chomp})
elsif 
	response == "age"
	client_preferences.replace({age: gets.chomp})
elsif 
	response == "fav_color"
	client_preferences.replace({fav_color: gets.chomp})
elsif 
	response =="decor"
	client_preferences.replace({decor: gets.chomp})
elsif 
	response == "superhero"
	client_preferences.replace({superhero: gets.chomp})
elsif 
	response == "chandeliers"
	client_preferences.replace({chandeliers: gets.chomp})
elsif 
	response =="sandproof"
	client_preferences.replace({sandproof: gets.chomp})
else puts "Thank you for your input."
end 


puts client_preferences