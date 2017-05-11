#Inquire how many applicants

puts "How many applications today?"
numapp = gets.chomp.to_i
until (numapp <= 0) do

#What is your name?

  puts "What is your name?"
  vn1 = "Drake Cula"
  vn2 = "Tu Fang"
  vname = gets.chomp
    if vname.include?(vn1 || vn2)
      puts "... nice to meet you #{vname}."
      vname = false
    else
      puts "Nice to meet you #{vname}!"
      vname = true
    end

#Age/Birthyear

  puts "How old are you?"
  age = gets.chomp.to_i
  puts "So you're #{age}. What year were you born?"
  birthyear = gets.chomp.to_i
  current_year = 2017
    if [current_year - birthyear, current_year + 1 - birthyear, current_year - 1 - birthyear].include?(age)
      puts "Ah! #{birthyear} was a fine year."
      birthyear = true
    else
      puts "your math is fishy."
      birthyear = false
  end

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
#Allergies
  alcollect = false
  puts "Please list any allergies, or type 'done'"
  until alcollect do
  #until [allergies].include?("done" || "sunshine")
    allergies = gets.chomp
    if allergies == "sunshine"
      puts "Probably a vampire."
      alcollect = true
      susallergy = true
    elsif allergies == "done"
      puts "Ok, thanks for sharing."
      alcollect = true
    else
      puts "I see. Any others? If not, type 'done'."
      allergies = gets.chomp
      susallergy = false
      alcollect = false
    end
  end

#Determining if Vampire

    if susallergy
    elsif !vname
      puts "Definitely a vampire!"
    elsif !birthyear && !garlicbread && !enroll
      puts "Almost certainly a vampire."
    elsif !birthyear && (!enroll || !garlicbread)
      puts "Probably a vampire!"
    elsif birthyear && (enroll || garlicbread)
      puts "Probably not a vampire."
      vampire = true
    else
      puts "Results inconclusive."
    end
    numapp -= 1
    puts "There are #{numapp} applicants left!"
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
