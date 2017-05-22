# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
# zombie_apocalypse_supplies.each do |index|
#   puts "#{index}*"
# end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
# def sort (array)
#   rounds = array.length
#   rounds -= 1
#   swap = true
#   # alphabet = "abcdefghijklmnopqrstuvwxyz"
#   while swap == true
#     swap = false
#     rounds.times do |index|
#       if array[index].downcase > array[index + 1].downcase
#         value1 = array[index]
#         array[index] = array[index + 1]
#         array[index + 1] = value1
#         swap = true
#       end
#     end
#   end
#   return array
# end
# p zombie_apocalypse_supplies
# p sort(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
# def inside(item, array)
#   rounds = array.length
#   rounds -= 1
#   incl = false
#   # alphabet = "abcdefghijklmnopqrstuvwxyz"
#   array.each do
#     incl = false
#     rounds.times do |index|
#       if array[index].downcase == item.downcase
#         incl = true
#       end
#     end
#   end
#   return incl
# end
# p inside("boots", zombie_apocalypse_supplies)
# p inside("hatchet", zombie_apocalypse_supplies)


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
# zombie_apocalypse_supplies -= ["binoculars", "compass", "batteries"]

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
# other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
#                             "solar battery", "flashlight"]
# combinedsupplies = other_survivor_supplies + zombie_apocalypse_supplies
# combinedsupplies.uniq!

# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
# extinct_animals.each do |key, value|
#   puts key.to_s + "-" + value.to_s + "*"
# end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
# extinct_animals.each do |key, value|
#   if value >= 2000
#     puts key.to_s + "-" + value.to_s + "*"
#   end
# end

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
# extinct_animals.each do |key, value|
#   value -= 3
#   puts key.to_s + "-" + value.to_s + "*"
# end

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
# def keycheck (input)
#   incl = false
#   extinct_animals.each do |key, value|
#     if input.downcase == key.downcase
#         incl = true
#     end
#   end
#   return incl
# end
# p keycheck("Dodo")
# p keycheck("Andean Cat")
# p keycheck("Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
pigeonarray = extinct_animals.rassoc(1914)
extinct_animals.delete("Passenger Pigeon")
p extinct_animals
p pigeonarray