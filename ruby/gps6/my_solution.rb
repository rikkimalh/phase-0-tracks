# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# requir_relative is allowing us to drop the data into the current file. 

class VirusPredictor
#creates new instance with variables listed below to be used throughout class. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#calls predicted/predescribed methods, refers to data that is listed in state_data.rb
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#calculates predicted deaths based on population density multipled by integer (and rounded to nearest integer)
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#speed is deteremiend based on how low the population density is, and calculated based on parameters set. 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state_name, population| 
  state = VirusPredictor.new(state_name, population[:population_density], population[:population])
state.virus_effects
end 

 

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects#

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects#

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects#

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section


# The difference between the two hash syntax file is that we use the rocket(?) syntax
#for the first hash and a colon for the second hash. There is no difference in end result as they 
# both accomplish the exact same thing. 

#Require relative allows you to reference a specified file, similar
#to how we refer to a file when using rspec. Require relative compliments require. 
# Require is accessing basic functionality that has been properly installed and made accessible in your system.
# 


# Virus_effects was repetitive as it created two getter methods that were already set in our initialize method. 

# Referring to items that are part of a data structure. In other words, learning how to refer to an item that is a hash within a hash!  

