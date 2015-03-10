arr = %w(Fred Barney Wilma Betty BamBam Pebbles)

p arr.map! { |name| name[0,3] }
