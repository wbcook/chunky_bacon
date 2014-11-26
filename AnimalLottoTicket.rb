class AnimalLottoTicket

# A list of valid notes.
NOTES = [:Ab, :A, :Bb, :B, :C, :Db, :D, :Eb, :E, :F, :Gb, :G]

# Stores the three picked notes and a purchase date.
attr_reader :picks, :purchase

# Creates a new ticket from three chosen notes. The three notes
# must be unique notes.
	def initialize( note1, note2, note3)
		if [note1, note2, note3].uniq!
			raise ArgumentError, "the three picks must be different notes"

		end
		@picks = picks
		@purchased = Time.now
	end

	# Score this ticket against the final draw.
	def score( final )
		count = 0
		final.picks.each do |note|
			count += 1 if picks.include? note
		end
		count
	end

	# Constructor to create a random AnimalLottoTicket
	def self.new_random
		begin
			new( NOTES[ rand( NOTES.length ) ], NOTES[ rand( NOTES.length ) ], NOTES[ rand( NOTES.length ) ] )
		rescue ArgumentError
		retry	
		end
	end

end

merphy = AnimalLottoTicket.new( :A, :B, :C )
