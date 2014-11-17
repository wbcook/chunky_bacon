#require 'endertromb'
class WishMaker
	def initialize
		@energy = rand( 6 )
	end
	def grant( wish )
		if wish.length > 10 or wish.include? ' '
			raise ArgumentError, "Bad wish."
		end
		@energy -= 1
		puts "You have been granted #{ wish }!"
		puts "I have #{ @energy } energy remaining, Smotchkiss."
	end
end

todays_wishes = WishMaker.new
todays_wishes.grant( "chkybcn" )

puts 5.class
puts 'wishing for chunky bacon'.class
puts WishMaker.new.class
