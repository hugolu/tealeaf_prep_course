arr = %w( fred Barney Wilma betty BamBam Pebbles)
p arr

p arr.sort {|str1, str2| str1.downcase <=> str2.downcase }
p arr.sort { |a, b| a.casecmp(b) }
