def namealias (name)
  sep_name = name.split(" ")
  #create iteration/block syntax cycle for each individual name
  sep_name.each do |i|
    i.downcase!
    #puts i
  end
  #change first with last name - split to words, reverse
  #if vowels, change to next vowels - split individual words to letters seperately, downcase, create vowels conditional, upcase first letter of each
  return p sep_name
end

namealias("Sanjay Nelson")