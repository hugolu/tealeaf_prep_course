da_string = ""
ary = [1, 2, 3, 4]
da_lamb = lambda { |input| da_string = da_string + (input * 10).to_s }
ary.each &da_lamb
puts da_string  #=>"10203040"
#Suprise! A lambda gets it's scope from the scope where it is defined. It does not have a scope of its own.
