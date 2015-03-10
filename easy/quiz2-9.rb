arr = %w(Fred Barney Wilma Betty BamBam Pebbles)

arr.map! {|name| name[0]+name[1]+name[2] }
p arr
