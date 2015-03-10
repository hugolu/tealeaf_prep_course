str = "Few things in life are as important as house training your pet dinosaur."
p str

#str.delete!("house")
p str.slice!(0, str.index('house'))
p str
