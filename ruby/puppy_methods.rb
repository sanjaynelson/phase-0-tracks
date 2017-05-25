class Puppy
  def initialize
    puts "Initializing new puppy instance..."
  end
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

class Athlete
  def initialize
    puts "New Athlete initializing."
  end
  def workout(number)
    number.times {puts "Does #{number} rep(s)!"}
  end
  def run(laps)
    laps.times {puts "#{laps} laps!"}
  end
end
# have loop that makes 50 instances of class
# instance num var outside of until loop
#
# loop stores instances in data structure
#
numofathletes = 50
created_athletes = {}
until