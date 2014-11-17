kitty_toys =
	[:shape => 'sock', :fabric => 'chenille'] +
	[:shape => 'mouse', :fabric => 'calico'] +
	[:shape => 'eggroll', :fabric => 'cashmere']

kitty_toys.sort_by { |nip| nip[:fabric] }.each do |nip|
	puts "Blixy has a #{ nip[:shape] } made of #{ nip[:fabric] }"
end

non_eggroll = 0
kitty_toys.each do |toy|
	next if  toy[:shape] == 'eggroll'
	non_eggroll += 1
end
puts "#{non_eggroll} of Blixy's toys aren't eggrolls."

kitty_toys.each do |toy|
	break if toy[:fabric] == 'cashmere'
	p toy[:shape]
end
