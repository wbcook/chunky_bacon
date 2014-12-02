# Opening an idea file from a folder on your computer.
open( "/home/liveuser/hide-lettuce-in-church-chairs-ideas.txt") do |idea|
  idea.each_line do |line|
    puts line if line ['lettuce']
  end
end
