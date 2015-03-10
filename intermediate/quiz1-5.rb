def factors(number)
  dividend = number
  divisors = []
  begin
    if dividend == 0
      break
    end
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

p factors(120)
p factors(0)
