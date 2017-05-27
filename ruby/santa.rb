class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age
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
  def celebrate_birthday(year)
    @age += 1
  end
  def get_mad_at(reindeername)
    p @reindeer_ranking
      @reindeer_ranking.each_with_index do |value, i|
        if value.downcase == reindeername.downcase
          @reindeer_ranking.delete_at(i)
        end
      end
      @reindeer_ranking.push(reindeername)
    p @reindeer_ranking
  end
end

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("chocolate")

# santas = []
ethnicities_ary = ["black", "Latino", "Indian", "Middle-Eastern", "white"]
genders_ary = ["female", "male", "agender", "bigender"]
# ethnicities_ary.length.times do |i|
#   santas << Santa.new(genders_ary[i], ethnicities_ary[i])
# end
# santa1 = Santa.new("none", "none")
# santa1.get_mad_at("Dasher")
# p santa1.age
# p santa1.gender
# santa1.gender=("male")
# p santa1.gender
# santas << Santa.new("male", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")

100.times do |currentsanta|
  currentsanta = Santa.new(genders_ary.sample, ethnicities_ary.sample)
  p currentsanta.age
  p currentsanta.gender
  p currentsanta.age= rand(140)
end
