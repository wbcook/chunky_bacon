# The method opens two files and slides the resulting IO objects down
# the chute to an attached block, riding sidecar to our motorcycle.

def double_open filename1, filename2
  open( filename1 ) do |f1|
    open( filename2 ) do |f2|
      yield f1, f2
    end
  end
end

# Prints the files out side-by-side.
double_open( "idea1.txt", "idea2.txt" ) do |f1, f2|
  puts f1.readline + " | " + f2.readline
end
