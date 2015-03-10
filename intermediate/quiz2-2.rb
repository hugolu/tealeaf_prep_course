hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
}

index = 0
hash = hash.each{ |key, value| value[:original_order] = index; index += 1 }
hash = hash.each{ |key, value| value[:length_order] = key.length }

hash.each do |k,v|
  print k.ljust(10)
  p v
end

hash.to_a.sort{|a, b| a[1][:original_order] <=> b[1][:original_order] }.each{ |item| puts item }
hash.to_a.sort{|a, b| a[1][:length_order] <=> b[1][:length_order] }.each{ |item| puts item }
