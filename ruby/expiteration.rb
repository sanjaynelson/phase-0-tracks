letters = ["a", "b", "c", "d", "e"]
new = []
puts "Original data:"
p letters

#iterate through the array with .map
letters.map! do |letter|
  #puts letter
  letter.next #evaluates to new item if new item is bottom and map includes bang
end

modletters = letters.map do |letter|
  #puts letter
  letter.next #evaluates to new item if new item is bottom and map includes bang
end

puts "after .map call:"
p letters
p modletters