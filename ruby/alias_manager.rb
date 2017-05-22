def namealias (fullname)
  p fullname
  names = fullname.split(" ").reverse!
  letters = []
  ##create iteration/block syntax cycle for each individual name
  ##change first with last name - split to words, reverse
  names.map! do |sepname|
    sepname.downcase
  end
  names.each { |sepname| letters << sepname.split('') }
  letters.map!
    # names.map! do |namearry|
    #   if namearry.include?("a" || "e" || "i" || "o" || "u")
    #    namearry.next
    #  end
    # end
  # sep_name.map! do |namearry|
  #   namearry.map! do |letter|
  #     if letter.include?("a" || "e" || "i" || "o" || "u")
  #       letter.next
  # end
  #if vowels, change to next vowels - split individual words to letters seperately, downcase, create vowels conditional, upcase first letter of each
  #return p sep_name
  p letters
  p names
end

namealias("Sanjay Nelson")