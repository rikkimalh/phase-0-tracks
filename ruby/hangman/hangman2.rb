class Game
	attr_accessor :word, :guess
	def initialize
		@word = nil
		@secret_word = nil
		@guess_count = 0
		@guesses = []
	end

	def set_word(word)
		@word = word.downcase
	end

	def secret_word
		@secret_word = @word
		@secret_word = @secret_word.tr("abcdefghijklmnopqrstuvwxyz", "-")
		p @secret_word
	end

	def guess(letter)
		letter = letter.downcase
		if letter.length > 1 then 
			puts "Please only enter one letter-guess at a time."
			@guess_count = @guess_count
		elsif @guesses.include?(letter) then
			puts "You have already guessed this letter!"
			@guess_count = @guess_count
		elsif @word.include?(letter) then
			@secret_word.insert(@word.index(letter), letter)
			@secret_word[@word.index(letter)+1] = ""
			@guesses << letter
			p @secret_word
			@guess_count = @guess_count + 1
		elsif @word.include?(letter) == false then
			puts "Oops, try again!"
			@guesses << letter
			p @secret_word
			@guess_count = @guess_count + 1	
		end
	end
def start_game
		puts "Hello User 1! Please (discreetly) enter a word for User 2 to try and guess!"
		set_word(gets.chomp.to_s)
		system "clear"
		secret_word
		puts "Alright User 2, you have #{(@word.length * 2)} guesses! Begin!"
		until @guess_count == (@word.length * 2) do
			guess(gets.chomp)
			puts "(That was guess number #{@guess_count})"
		break if @secret_word.include?('-') == false
		end
		if @secret_word.include?('-') then
			puts "Oops, you're out of guesses! Better luck next time!"
		else puts "Good job, you win!"
		end
	end 
end
	hangman = Game.new
hangman.start_game
