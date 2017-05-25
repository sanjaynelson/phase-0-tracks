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
  def workout(rep)
    rep.times {puts "does #{rep} rep(s)!"}
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
athletes_created = 0
#namenumber = 1
stored_athletes = []
until athletes_created == 50
  #athlete = "Athlete#{namenumber}"
  athlete = Athlete.new
  #namenumber += 1
  stored_athletes << athlete
  athletes_created += 1
end
# p stored_athletes

stored_athletes.each do |currentath|
  puts "#{currentath} #{currentath.workout(2)}"
  puts "#{currentath} #{currentath.run(2)}"
end