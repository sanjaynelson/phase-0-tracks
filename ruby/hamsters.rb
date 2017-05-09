puts "What's the hamster's name?"
hamstername = gets.chomp
puts "The Hamster's name is #{hamstername}!"
puts "What's the volume of hamster between 1 & 10?"
hamstervol = gets.chomp.to_i
puts "The Hamster's volume is #{hamstervol}."
puts "What's the hamster's fur color?"
hamstercolor = gets.chomp
puts "The color of the hamster's fur is somehow #{hamstercolor}"
puts "Is the hamster worth adopting? (y or n)"
hamsteradopt = gets.chomp
if hamsteradopt == "y"
  hamsteradopt = true
  puts "The Hamster is worth adopting."
else hamsteradopt == "n"
  hamsteradopt = false
  puts "The Hamster is not worth adopting."
end
puts "What's the hamster's estimated age?"
hamsterestage = gets.chomp.to_i
if hamsterestage.empty?
  hamsterestage = nil
  puts "Age unknown"
else
  hamsteradopt
  puts "The estimated age of the hamster is #{hamsterestage}"
end