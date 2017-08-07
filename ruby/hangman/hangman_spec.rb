
require_relative 'hangman'

describe Hangman do 
	let (:hangman){Hangman.new}

	it "starts game" do
		expect(hangman.start_game).to respond_with " "

	end
end