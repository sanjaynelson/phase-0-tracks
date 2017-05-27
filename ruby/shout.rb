# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_happily(words)
#     words + "!!" + " :)"
#   end
# end

# Shout.yell_happily("I'm preturbed")
# Shout.yell_angrily("I'm mad")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yell_happily(words)
    words + "!!" + " :)"
  end
end

class Parents
  include Shout
end
class Teenagers
  include Shout
end

bobby = Teenagers.new
p bobby.yell_angrily("I'm a teenager")
sally = Parents.new
p sally.yell_happily("I love you tho")