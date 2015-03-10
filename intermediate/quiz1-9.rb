characters = [
    {:character=>"Batman", :real_name=>"Bruce Wayne", :description=>"Comic book superhero who fights crime while wearing a costume loosely based on a bat"}, 
    {:character=>"Robin", :real_name=>"Dick Grayson", :description=>"Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes"},
    {:character=>"Commisioner Gordon", :real_name=>"James Gordon", :description=>"Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone"}, 
    {:character=>"Alfred", :real_name=>"Alfred", :description=>"The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman"}
    ]

class String
  def short_version( length )
    result = self.dup
      starting_length = self.length
      if starting_length > length
        result = result[ 0, length - 1 ]
        result += "…"
      end
      return result
    end
end

characters.each do |hash|
#  hash.each do |key, value|
#    hash[key] = value.short_version(32)
#  end
  p hash.values.map{|value| value.short_version(32)}.join('  ')
end

