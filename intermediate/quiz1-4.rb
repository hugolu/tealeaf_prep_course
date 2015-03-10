ary = [1, 2, 3, 4]
ary.each do |item|
  p item
  ary.shift(1)
  p ary
end

ary = [1, 2, 3, 4]
ary.each do |item|
 p item
 ary.pop(1)
 p ary
end
