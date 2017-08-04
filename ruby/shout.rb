#module Shout
#	def self.yell_angrily(words)
#		words+"!!!!!!" + " :("
#	end
#	def self.yell_happily(happy_words)
#		happy_words+"!!!!!!" + ":D"
#	end
#end

#p Shout.yell_angrily("MOTHER ******")
#p Shout.yell_happily("HORRAY")

module Speak_angry
	def angry(words1)
		puts "#{words1}!!!!!!! :( "
	end
end

module Speak_happy
	def happy(words2)
		puts "#{words2} !!!!! :D "
		
	end
end


class Angry_shout
	include Speak_angry
end


class Happy_shout
	include Speak_happy
end 

angry = Angry_shout.new
angry.angry("MOTHER *******")

happy = Happy_shout.new
happy.happy("HURRAY I'M SO HAPPY")