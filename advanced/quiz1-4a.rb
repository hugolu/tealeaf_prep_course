ary = [1, 2, 3, 4]
da_lamb = lambda { |input| input *= 10 }
ary.each &da_lamb
p ary #=>[1, 2, 3, 4]
