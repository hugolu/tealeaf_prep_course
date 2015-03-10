str = "The Flintstones Rock"

hash = {}

str.split('').each do |c|
  if hash.key? c
    hash[c] += 1
  else
    hash[c] = 1
  end
end

p hash
