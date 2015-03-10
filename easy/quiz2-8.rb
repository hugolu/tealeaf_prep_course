arr = %w(Fred Barney Wilma Betty BamBam Pebbles)

p arr.find_index {|name| name.start_with? "Be"}
p index = arr.index{ |name| name[0, 2] == "Be" }
