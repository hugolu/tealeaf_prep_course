str = "The Flintstones Rock!"

#count = 0
#str.each { |c| count += 1 if c == 't'}
#p count

count = str.scan('t').count
p count
