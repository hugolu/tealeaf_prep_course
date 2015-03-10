arr = %w(Fred Barney Wilma Betty BamBam Pebbles)

p arr.sort!{ |a, b| a.length <=> b.length }
