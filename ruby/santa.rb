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
  def age
    @age
  end
  def ethnicity
    @ethnicity
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
santa1 = Santa.new("none", "none")
santa1.get_mad_at("Dasher")
p santa1.age
# santas << Santa.new("male", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
