module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yell_happily(words)
    words + "!!" + " :)"
  end
end

Shout.yell_happily("I'm preturbed")
Shout.yell_angrily("I'm mad")