class String

@@syllables = [
	{ 'Paij' => 'Personal',
	  'Gonk' => 'Business',
	  'Blon' => 'Slave',
	  'Stro' => 'Master',
	  'Wert' => 'Father',
	  'Onnn' => 'Mother' },
	{ 'ree'  => 'AM',
	  'plo'  => 'PM' }
]

	def dash_split; split( '-' ); end

	def name_significance
		parts = self.split( '-' )
		syllables = @@syllables.dup
		signif = parts.collect do |p|
			syllables.shift[p]
		end
	signif.join( ' ' )
	end
end

print "Gonk-plo".name_significance
puts
print "Gonk-plo".dash_split
puts

catsandtips = [0.12, 0.63, 0.09].collect { |catcost| catcost + 
	( catcost * 0.20 ) }
print catsandtips
puts
