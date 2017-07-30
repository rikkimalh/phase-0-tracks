letters = ["a", "b", "c", "d", "e"]


letters.map! do |letter|
	puts letter 
	letter.next
end

letters.delete_if {|letter| letter == "b"}
p letters

p letters.bsearch {|letter| letter >= "b"}

p letters.select {|letter| letter == "d"}
 
p letters.drop_while {|letter| letter == "a"}


numbers = {
	one: 1, 
	two: 2,
	three: 3, 
	four: 4,
	five: 5,
	six: 6
}

numbers.each do |spelled, numerical|
	puts "#{numerical} is spelled out #{spelled}!"

end

p numbers.delete_if {|spelled, numerical| numerical == 2 }

p numbers.keep_if {|spelled, numerical| numerical == 6 }

p numbers.select {|spelled, numerical| numerical != 6}

p numbers.drop_while {|spelled, numerical| spelled.length < 3}