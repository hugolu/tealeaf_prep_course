my_hash = {a: 'hi'}
n = my_hash[:a]
n << ' there'

p n  #  => "hi there"
p my_hash #=> {a: 'hi there'}
