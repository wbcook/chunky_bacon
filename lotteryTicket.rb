class LotteryTicket

	NUMERIC_RANGE = 1..25
	attr_reader :picks, :purchased

	def initialize( *picks )
		if picks.length != 3
			raise ArgumentError, "three numbers must be picked"
		elsif picks.uniq.length != 3
			raise ArgumentError, "the three picks must be different numbers"
		elsif picks.detect { |p| not NUMERIC_RANGE === p }
			raise ArgumentError, "the three picks must be numbers between 1 and 25."
		end
		@picks = picks
		@purchased = Time.now
	end
	
	def self.new_random
		new( rand( 25 ) + 1, rand( 25 ) + 1, rand( 25 ) + 1 )
	rescue ArgumentError
	end

	def score( final )
		count = 0
		final.picks.each do |note|
			count +=1 if picks.include? note
		end
		count
	end
end

ticket = LotteryTicket.new( rand( 25 ) + 1,
	rand( 25 ) + 1, rand( 25 ) + 1 )
p ticket.picks

ticket2 = LotteryTicket.new( 2, 5, 19 )
winner = LotteryTicket.new( 4, 5, 19 )
puts ticket2.score( winner )

