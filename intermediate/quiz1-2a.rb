str="The Flintstones Rock"
result = {}
letters = ('A'..'Z').to_a.concat( ('a'..'z').to_a )
letters.each do |letter|
  count = str.scan(letter.to_s).count
  result[letter] = count if count > 0
end
p result
