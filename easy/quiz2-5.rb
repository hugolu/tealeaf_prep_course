hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
rest = { "Marilyn" => 22, "Spot" => 237 }

#rest.each do |name, age|
#  hash[name] = age
#end
hash.merge!(rest)
p hash
