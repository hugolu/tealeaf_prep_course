hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p hash

hash.keep_if { |name,age| age < 100 }
p hash
