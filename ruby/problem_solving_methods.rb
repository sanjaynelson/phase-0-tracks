#for each number in array
#check if num = number in array
#return index of number if matches
#return something else if no match - mayb nil

#discover length of array
#check array .length num of times
#if num = value of array, return index -1
def search_array (array, num)
  array.length.times {|index|
    # p "loop:#{index}"
    if num == array[index]
      return index
    end
  }
return nil
end
arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 24)

#recieve num
#sequence fibonnaci to index of num
#negative index -1 + -2
#push sum to end of array
#repeat until index = num
#return entire array
def fib (num)
  fibarray = [0, 1]
  if num == 0
    return []
  elsif num == 1
    return [0]
  # elsif num == 2
  #   return fibarray
  else
    num -= 2
    num.times {
      sum = fibarray[-1] + fibarray[-2]
      fibarray.push(sum)
    }
    return fibarray
  end
end
p fib(6)
p fib(2)
p fib(100)[-1] == 218922995834555169026