
require_relative 'hangman'

describe hangman do 
	let (:hangman){Hangman.new}

	it "program start" do
		expect().to eq ""
	end
end