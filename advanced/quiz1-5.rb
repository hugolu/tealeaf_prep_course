# UUID is like "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

def uuid
  hex = %w(1 2 3 4 5 6 7 8 9 0 a b c d e f)
  sections = [8, 4, 4, 4, 12]
  result = ""
  sections.each_with_index do |len, idx|
    result += hex.sample while (len -= 1) >= 0
    result += '-' if idx < sections.size - 1
  end
  return result
end

p uuid
