def namealias (fullname)
  #p fullname
  names = fullname.split(" ").reverse!
  letterarray = []
  ##create iteration/block syntax cycle for each individual name
  ##change first with last name - split to words, reverse
  ##if vowels, change to next vowels - split individual words to letters seperately, downcase, create vowels conditional, upcase first letter of each
  names.map!{|sepname| sepname.downcase}
  #p names
  names.each { |sepname| letterarray << sepname.split('') }
  #p letterarray
  vowels = ["a", "e", "i", "o", "u"]
  specialcons  = ["z", "d", "h", "n", "t"]
  letterarray.map! do |index|
    #vowels = ["a", "e", "i", "o", "u"]
    index.map do |letter|
      if vowels.include?(letter)
        vowels.rotate(1)[vowels.index(letter)]
      elsif specialcons.include?(letter)
        letter.next.next
      else
        letter.next
      end
    end
  end
  #rejoin and re-capitalize names as array
  letterarray.map! {|index| index.join.capitalize}
  #combine each array + a space into new var to return
  returnname = ""
  letterarray.each do |index|
    if letterarray.length-1 == letterarray.index(index)
      returnname += "#{index}"
    else
      returnname += "#{index} "
    end
  end
  return returnname
end

#namealias("Sanjay William Nelson")

#Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)

puts "Please enter name to alias. When finished, hit enter."
input = gets.chomp
puts "Your alias is: #{namealias(input)}"