class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(number)
    number.times { puts "Woof!"}
    #number
  end
  def roll_over
    puts "*rolls over*"
  end
  def dog_years(humanyear)
    dogage = humanyear * 7
    p dogage
  end
  def pawshake
    puts "*lifts up paw*"
    puts "*asks for treat*"
  end
end
pup = Puppy.new
pup.fetch("chewtoy")
pup.speak(4)
pup.roll_over
pup.dog_years(10)
pup.pawshake