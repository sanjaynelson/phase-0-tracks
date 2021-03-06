# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# The big difference between require & require relative where Ruby looks (determined by which command is used)
# Require brings in third party gems, libraries, etc.
#
require_relative 'state_data'

class VirusPredictor

  ## Initializes new instance of class, setting instance variables equal to parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #private

  ## encapsulates and runs predicted_deaths & speed_of_spread methods
  def virus_effects
    #predicted_deaths#(@population_density, @population, @state)
    #speed_of_spread#(@population_density, @state)
    print "#{@state} will lose #{predicted_deaths} people in this outbreak"
    puts " and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

  ## uses algorithm & conditional to determine how many deaths may happen based of population & density, and prints it.
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end

    #print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Determines speed based on population density and control flow
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #speed = 0.0

    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do |state_name, pop_hash|
  #instance = state_name.downcase
  instance = VirusPredictor.new(state_name, pop_hash[:population_density], pop_hash[:population])
  instance.virus_effects
 end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The higher-level syntax uses a string as the key and a hash rocket to input the second-level hash to it. The second-level hash's syntax is simply two symbols.

# What does require_relative do? How is it different from require?
# The big difference between require & require relative is where Ruby looks (determined by which command is used - Require brings in third party gems, libraries, etc. and searches a wider field, require_relevative searches the directory the rb file is in.)

# What are some ways to iterate through a hash?
# using methods such as .each, .map, .map!, etc

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# I learned more about the scope - instance variables can be accessed throughout the class, so the methods didn't need them as inputs.

# What concept did you most solidify in this challenge?
# scope, refactoring