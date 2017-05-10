#What is your name?
puts "What is your name?"
name = gets.chomp
puts "Thanks, nice to meet you #{name}."
#How old are you?
puts "How old are you?"
age = gets.chomp.to_i
puts "So you're #{age}. What year were you born?"
birthyear = gets.chomp.to_i
puts "Ah! #{birthyear} was a fine year."
#Our company cafeteria serves garlic bread. Should we order some for you?
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y or n)"
garlicbread = gets.chomp
if garlicbread == "y"
  garlicbread = true
  puts "Good."
else garlicbread == "n"
  garlicbread = false
  puts "..Oh."
end
#Would you like to enroll in the company’s health insurance?
puts "Would you like to enroll in the company’s health insurance? (y or n)"
enroll = gets.chomp
if enroll == "y"
  enroll = true
  puts "Ok."
else enroll == "n"
  enroll = false
  puts "Your loss."
end