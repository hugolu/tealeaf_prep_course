da_string = "original"
ary = [1, 2, 3, 4]
def call_me(da_string, ary)
  da_string = "not so original"
  da_lamb = lambda { |input| da_string = da_string + (input * 10).to_s } #=> da_string="not so original"
  ary.each &da_lamb
end
call_me(da_string, ary)
puts da_string  #=>"original"
