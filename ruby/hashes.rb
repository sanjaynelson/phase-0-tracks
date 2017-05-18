## Set Application

application = {
name: "",
age: nil,
numchildren: nil,
decortheme: "",
consulting: true
}

# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
puts "Hi! What is your name?"
application[:author] = gets.chomp
puts "Good to meet you, #{application[:author]}, How old are you?"
application[:age] = gets.chomp.to_i
if application[:age] == 0
  puts "Sorry, can you provide an age with digits?"
  application[:age] = gets.chomp.to_i
end
puts "How many kids ya got?"
application[:numchildren] = gets.chomp.to_i
puts "What Decor theme would you like? Please limit your answer to a brief sentence."
application[:decortheme] = gets.chomp
puts "Great. Do you want to request specialized consulting? (y,n)"
application[:consulting] = gets.chomp.downcase
if application[:consulting] == "no" || 'n'
  application[:consulting] = false
else
  application[:consulting] = true
end

p application

# Print the hash back out to the screen when the designer has answered all of the questions.
# Allow Corrections from user (Convert symb to string?)
# Print updated hash, exit