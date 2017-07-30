#Program asks spy for their name
#spy enters name
#swap first and lastname
#change the letters of the name (either by changing vowels or another way)
#account for uppercase in name and change that appropriatley 
#result will be given to user and then program will be asked again
#to enter a new name
#program will end once the user hits exit
#upon hitting exit, the user will be given the final results of their inputs, including the original entry. 
translation = {}

loop do

puts "Please enter your name. Enter quit when you are finished"


fullname = gets.chomp
break if 
fullname == "quit"

name = fullname.split
firstname = name.first 
lastname = name.last 

p "#{lastname} #{firstname}"

codename = fullname.gsub(/./){|codename| codename.next}

p "This is your codename: #{codename}."

translation[fullname] = codename

end

translation.each do |fullname, codename|
p "Your results:
#{codename} is actually #{fullname} !!!"
end 

puts "Thanks for playing"