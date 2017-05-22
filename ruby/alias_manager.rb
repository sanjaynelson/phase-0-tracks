def namealias (fullname)
  p fullname
  names = fullname.split(" ").reverse!
  letterarray = []
  ##create iteration/block syntax cycle for each individual name
  ##change first with last name - split to words, reverse
  ##if vowels, change to next vowels - split individual words to letters seperately, downcase, create vowels conditional, upcase first letter of each
  names.map!{|sepname| sepname.downcase}
  p names
  names.each { |sepname| letterarray << sepname.split('') }
  p letterarray
  letterarray.map do |index|
    index.map do |letter|
      if ["a", "e", "i", "o", "u"].include?(letter)
        letter.next!
      end
    end
  end
  p letterarray
  #return p sep_name
end

namealias("Sanjay Nelson")