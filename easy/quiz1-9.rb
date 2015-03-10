arr_hash = {"Fred"=>0, "Wilma"=>1, "Barney"=>2, "Betty"=>3, "BamBam"=>4, "Pebbles"=>5}

p arr_hash.assoc("Barney")

arr = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
myhash = {}
arr.each_with_index do |name, index|
  myhash[name] = index
end
p myhash
