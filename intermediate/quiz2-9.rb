def rps(fist1, fist2)
  if (fist1 == "rock")
    (fist2 == "paper") ? "paper" : "rock"
  elsif (fist1 == "paper")
    (fist2 == "scissors") ? "scissors" : "paper"
  else # fist1 == "scissors"
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

# fist1     fist2
# rock      paper     >>> paper
#          !paper     >>> rock
# paper     scissors  >>> scissors
#          !scissors  >>> paper
# scissors  rock      >>> rock
#          !rock      >>> scissors

puts rps( rps( rps("rock", "paper"), rps("rock", "scissors")), "rock")
#    rps( rps( "paper"             , "rock"                 ), "rock")
#    rsp( "paper"                                            , "rock") 
#    "paper"
