str = "Humpty Dumpty sat on a wall."

p str.split(/\W/).reverse.join(' ')+"."

ary = str.split(/\W/)
ary.reverse!
str = ary.join(' ') + '.'
p str
