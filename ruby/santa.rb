class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance ..."
  end
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end
end

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("chocolate")

santas = []
ethnicities_ary = ["black", "Latino", "Indian", "Middle-Eastern", "white"]
genders_ary = ["female", "male", "agender", "bigender", "male"]
ethnicities_ary.length.times do |i|
  santas << Santa.new(genders_ary[i], ethnicities_ary[i])
end

# santas << Santa.new("male", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
