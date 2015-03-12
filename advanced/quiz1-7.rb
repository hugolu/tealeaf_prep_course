def is_a_number?(str)
  str.match (/\d+/)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false if !is_a_number?(word)
  end
  return true
end

p dot_separated_ip_address?("192.168.0.1")
p dot_separated_ip_address?("192.168.0")
p dot_separated_ip_address?("192.168.0.1.2")
p dot_separated_ip_address?("192.168.0.x")
