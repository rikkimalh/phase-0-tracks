# Algorithm: 
#encrypt method: 
#Agent enters code. Code is received and converted to move encryption forward one letter.
#Return value will be sent back to user with correct plus one format
#Spaces will not count toward letters and will be a space

#decrypt method:
#reverses the encrypt process
#user enters encrypted code
#method returns decrypted value
#Spaces will not count torward letters and will be a space

def encrypt(x)
	index = 0
	while index < x.length
		x[index] = x[index].next
		index += 1
	end
	puts x
end

def decrypt (x)
	index = 0
	while index < x.length
		x[index] = (x[index].ord - 1).chr
		index += 1
	end
	puts x
end

encrypt("abc")
encrypt("aed")
decrypt("bcd")
decrypt("afe")
# decrypt(encrypt("swordfish")) 
#This does not work, is there something I did wrong?? SO CONFUSING!!

puts "would you like to encrypt or decrypt?"
answer = gets.chomp

if 
	answer == "encrypt"
	puts "what do you want to encrypt?"
	code = gets.chomp
	encrypt (code)
elsif answer == "decrypt"
	puts "what do you want to decrypt?"
	code = gets.chomp
	decrypt (code)
else
	puts "Invalid answer. Please try again."
end
