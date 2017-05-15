#encrypt method
#alphabet = "abcdefghijklmnopqrstuvwxyz"
#string = alphabet[0..2]
# def newmethod(x)
# var1 = x
# var2 = var1[0]
# var1 = var1.delete(var2)
# var3 = (var1 + var1[-1].next)
# puts var3
# end
# newmethod("zed")
# def encrypt (x)
#   until x.length == 0
#     string = x
#     firstvar = string[0]
#     puts firstvar.next
#     string.delete(firstvar)
#   end
#   return
# end
# encrypt("abc")
# #decrypt method

#unicorn
#nicorn
#nicornu
#get

#password = ""
# password = "unicorn"
# password_lastletter = password.length-1

# puts "length of password is #{password.length} letters"
# puts "the letter at index #{password_lastletter}."

# puts "Please use encrypt method to encrypt your password."

def encrypt(string)
  index = 0
  blank = ""
  while index < string.to_s.length
    # this code works right now for everything
    # besides using Z or spaces
    # the pseudocode below would work out an if else
    # statement that would make the rest of the code work
    # password[index] = password[index].next.upcase!
    # index += 1
    if string[index] == "z"
      blank = "a"
      index += 1
      # p password[index]
    elsif string[index] == " "
      blank = blank + " "
      index += 1
    else
      blank = blank + string[index].next
      index += 1
    # else password[index] = ('a'..'y').to_s
    #   password[index] = password[index].next!
    #   index += 1
    #   # p password[index]
    # elsif password[index] == " "
    #   password[index] == " "
    #   index += 1
    #   # p password[index]
    end
  end
return blank
end

puts encrypt("ca ts")

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < string.to_s.length
    var1 = string[index]
    var2 = alphabet.index(var1)
    var2 = var2.to_i - 1
    print alphabet[var2]
    index += 1
  end
return string
end

decrypt(encrypt("swordfish"))

