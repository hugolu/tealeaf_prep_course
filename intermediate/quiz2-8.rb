class String
  def short_version(length)
    if self.length > length
      self[0..length-1] + "…"
    else
      self
    end
  end
end
p "hello world".short_version(8)
p "hello".short_version(8)


class String
  def pretty_short_version(length)
    result = self.dup
    starting_length = self.length
    if starting_length > length
      length -= 1
      words = result.split
      result = words.shift
      result = result[0, length] if result.length > length
      result += ' ' + words.shift while(!words.empty? && ((result.length + words.first.length + 1) < length))
      result += "…"
    end
    return result
  end
end
p "hello world".pretty_short_version(8)
p "hello".pretty_short_version(8)

