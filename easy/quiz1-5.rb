def between_10_and_100(num)
  case num
  when 10..100
    puts "between 10 and 100"
  else
    puts "not between 10 and 100"
  end
end


between_10_and_100(42)

puts answer = (10..100).cover?(42)
