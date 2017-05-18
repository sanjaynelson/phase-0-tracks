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
if application[:consulting] = "no" || "n"
  application[:consulting] == false
else
  application[:consulting] == true
end

#p application

# Print the hash back out to the screen when the designer has answered all of the questions.
p application
# Allow Corrections from user (Convert string into symbol?)
puts "Do you want to change any of this information? (y,n)"
updates_wanted = gets.chomp.downcase
if updates_wanted == "y"
  puts "Alright, would you like your listed name, age, number of children, or none? (answer with: 'name', 'age', 'children', or 'none')"
  whichupdate = gets.chomp.downcase
  if whichupdate == "age"
    puts "Alright, what would you like to change your age to?"
    application[:age] = gets.chomp.to_i
    if application[:age] == 0
      puts "Sorry, can you provide an age with digits?"
      application[:age] = gets.chomp.to_i
    end
  elsif whichupdate == "children"
    puts "Alright, what how many kids do you have?"
    application[:numchildren] = gets.chomp.to_i
  elsif whichupdate == "name"
    puts "Ok, what is your name?"
    application[:namespace] = gets.chomp
  end
end
puts "Alright, #{application[:name]}, you've filled out the application to say that you are #{application[:age]} years old, and have #{application[:numchildren]} children."

# Allow Corrections from user (Convert symb to string?)
# Print updated hash, exit