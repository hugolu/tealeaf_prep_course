#1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |num| puts num }
puts

#2. Same as above, but only print out values greater than 5.
arr.each { |num| puts num if num > 5 }
puts

#3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
p arr2 =  arr.select {|num| num if num % 2 != 0 }
puts

#4. Append "11" to the end of the original array. Prepend "0" to the beginning.
arr.push 11
arr.unshift 0
p arr
puts

#5. Get rid of "11". And append a "3".
arr.pop
arr.push 3
p arr
puts

#6. Get rid of duplicates without specifically removing any one value.
arr.uniq!
p arr
puts

#7. What's the major difference between an Array and a Hash?
#array: object set, in which the element is accessed by index
#hash: object set with key and value pair, in which the value is located with the key

#8. Create a Hash using both Ruby syntax styles.
hash1 = {:one => 1, :two => 2, :three => 3}
hash2 = {one:1, two:2, three:3}
p hash1, hash2
puts

#9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}
#1. Get the value of key `:b`.
h = {a:1, b:2, c:3, d:4}
p h[:b]
#2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
p h
#3. Remove all key:value pairs whose value is less than 3.5
h.delete_if {|k,v| v < 3.5}
p h
puts

#10. Can hash values be arrays? Can you have an array of hashes? (give examples)
hash = {foo:[1,2,3], bar:[4,5,6]}
array = [{one:1, two:2, three:3}]
p hash, array
puts

#11. Look at several Rails/Ruby online API sources and say which one you like best and why.
# Fixnum.times{|n| block} It's cool.

#12. Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

def fill_info(hash, array)
  hash[:email] = array[0]
  hash[:address] = array[1]
  hash[:phone] = array[2]
end

fill_info(contacts["Joe Smith"], contact_data[0])
fill_info(contacts["Sally Johnson"], contact_data[1])
p contacts
puts

#13. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]
puts

#14. In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:eamil, :address, :phone]

contacts.each do |name, info|
  fields.each_with_index do |field, index|
    info[field] = contact_data[index]
  end
end
p contacts
puts

# bonus
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
              ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, info), idx|
  fields.each_with_index do |field, index|
    info[field] = contact_data[idx][index]
  end
end
p contacts
puts

#15. Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |val| val.start_with? "s" }
p arr
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |val| val.start_with? "s", "w" }
p arr
puts

#16. Take the following array:
#a = ['white snow', 'winter wonderland', 'melting ice',
#     'slippery sidewalk', 'salted roads', 'white trees']
#and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
a = ['white snow', 'winter wonderland', 'melting ice',
       'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |val| val.split }.flatten
p a
puts

#17. What will the following program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!" #the answer. hash doesn't maintain the order of data
else
  puts "These hashes are not the same!"
end
