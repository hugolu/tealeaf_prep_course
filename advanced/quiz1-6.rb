str = "Herman Munster is a BIG BIG man." 

#should become: "namreH retsnuM si a GIB GIB nam."

class String
  def word_reverse!
    words = self.split(/\W/)
    words.each { |word| word.reverse! }
    return words.join(" ") + "."
  end
end
p "Herman Munster is a BIG BIG man.".word_reverse!

class String
  def words_map!
    words = self.split(/\W/)
    words.map! {|word| yield word}
    return words.join(" ") + "."
  end
end
p "Herman Munster is a BIG BIG man.".words_map! { |word| word.reverse }
p "Herman Munster is a BIG BIG man.".words_map! { |word| word.capitalize }
p "Herman Munster is a BIG BIG man.".words_map! { |word| word.upcase }
p "Herman Munster is a BIG BIG man.".words_map! { |word| word.downcase }
