hash = {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}

total = 0
hash.each do |key, value|
  total += value
end

p total

total_age = hash.values.inject(:+)
p total_age
