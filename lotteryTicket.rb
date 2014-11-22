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
end

class LotteryDraw
	@@tickets = {}
	def LotteryDraw.buy( customer, *tickets )
		unless @@tickets.has_key?( customer )
			@@tickets[customer] = []
		end
		@@tickets[customer] += tickets
	end
end

ticket = LotteryTicket.new( rand( 25 ) + 1,
	rand( 25 ) + 1, rand( 25 ) + 1 )
p ticket.picks

LotteryDraw.buy 'Yal-dal-rip-sip',
	LotteryTicket.new( 12, 6, 19),
	LotteryTicket.new( 5, 1, 3 ),
	LotteryTicket.new( 24, 6, 8)
