def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end
puts color_valid("red")


def smart_color_valid(color)
  color == "blue" || color == "green"
end
puts smart_color_valid("red")
