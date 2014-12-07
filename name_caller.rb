# A method which answers to many names.
class NameCaller
  def method_missing( name, *args )
    puts "You're calling ` #{ name } ' and you say:"
    args.each { |say| puts " " + say }
    puts "But no one is there yet."
  end
  def deirdre( *args )
    puts "Deirdre is right here and you say:"
    args.each { |say| puts " " + say }
    puts "And she loves every second of it."
    puts "(I think she think's you're peotic.)"
  end
end

NameCaller.new.deirdre( 'Moonlight becomes you so...' )
NameCaller.new.simon( 'Hello?', 'Hello? Simon?' )
