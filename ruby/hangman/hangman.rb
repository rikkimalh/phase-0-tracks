#Hangman#

#First input: the word that will be solved. This word will be stored as a string#

#Word will be shown but will be blank spaces in place of the word. #

#Second input: The guesses will begin. A letter, capitalized or uncapitalized will be accepted#


#If letter is part of word, show user the word with blank spaces but with their letter displayed. 
#Else, show the number of blank spaces the user will have to fill.#

#Method to get input
#input: word to be solved
#steps: prompt user for a word to solve. Computer will accept and hide word/replace word with blank spaces.
#output: Word with blank spaces. Computer will NOT lose track of inputted word.#

#Method to guess
#input: guessed letter
#steps: Player enters a letter to guess. If correct, it will NOT go against the guess count.
#The word will re-display, but the correctly guessed letter will fill in any blank spaces that it matches#

#User will have x number of guesses to solve. x being the length of the word. 
#Each time a user gets a letter wrong, they will be prompted with how many guesses they have left. #

#If the letter is correct, it will NOT go against the guess count
#If the letter is incorrect, the user will have one less guess to solve the word#

#If user runs out of guesses, The user will be told "Sorry you're out of guesses and  you lose!, the word was [first input]! " 
#If the user gets the word, the user will be told "Congratulations!! You guessed the word, you win!!" 

class Hangman
	 
	def initialize
		@word = nil
		@hidden_word = nil
		@num_guesses = 0
		@guess_tracker = []
	end

	def input(word)
		@word = word.downcase
	end

	def hidden_word
		@hidden_word = @word
		@hidden_word = @hidden_word.tr("abcdefghijklmnopqrstuvwxyz", "-")
		p @hidden_word
	end

	def guess(letter)

		letter = letter.downcase
		if letter.length > 1  

			puts "Please only guess one letter at a time"
			@num_guesses = @num_guesses

		elsif @guess_tracker.include?(letter) 
			puts "You have already guessed #{letter}. Try again"
			@num_guesses = @num_guesses

		elsif @word.include?(letter) 

			@hidden_word.insert(@word.index(letter), letter)
			@hidden_word[@word.index(letter)+1] = ''
			@guess_tracker << letter
			p @hidden_word


		elsif @word.include?(letter) == false 
			puts "Oops, try again!"
			@guess_tracker << letter
			p @hidden_word
			@num_guesses = @num_guesses + 1	

	end
end

def start_game
		puts "User 1: Please input a word. I hope no one is around you!"
		input(gets.chomp.to_s)
		system "clear"
		hidden_word
		puts "User 2, its time to play hangman! You hav #{@word.length} guesses left... Begin!"

		until @num_guesses == (@word.length) do
			guess(gets.chomp)
			puts "(That was guess number #{@num_guesses})"
		break if @hidden_word.include?('-') == false
		end
		if @hidden_word.include?('-')
			puts "Sorry you're out of guesses. The word was #{@word}, you lose! "
		else puts "Congratulations!! You guessed the word, you win!!"
		end
	end 
end

hangman = Hangman.new
hangman.start_game
