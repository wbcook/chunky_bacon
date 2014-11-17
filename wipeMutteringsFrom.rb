def wipe_mutterings_from( sentence )
	unless sentence.respond_to? :include?
		raise ArgumentError,
			"cannot wipe mutterings from a #{ sentence.class }"
	end
	sentence = sentence.dup
	while sentence.include? '('
		open = sentence.index( '(' )
		close = sentence.index( ')', open )
		sentence[open..close] = '' if close
	end
	puts sentence
end

what_he_said = "But, strangely (em-pithy-dah),
	I learned upon, played upon (pon-shoo) the
	organs on my home (oth-rea) planet."
number = 1
wipe_mutterings_from( what_he_said )
puts what_he_said
