puts "What is your hamsters name?"
name = gets.chomp

puts "What is the volume level? (from 1-10)"
volume = gets.chomp.to_i

puts "What is your hamsters fur color?"
color = gets.chomp

puts "Is your hamster a good candidate for adoption?"
candidate  = gets.chomp

puts "How old is your hamster?"
age = gets.chomp.to_i
if age ==""
puts age = "nil"
end 

puts "Thank you for the info. Here is just a recap of what you've provided: 
Your hamsters name is #{name}
The volume level is #{volume}
The hamsters color is #{color}
Is your hamster a strong candidate? #{candidate}
The hamsters age is #{age}
"