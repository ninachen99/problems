# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)       
  # start i at smaller of number1, number2         
  i = 1                                            
  if number1 <= number2                            
    i = number1                                    
  else                                             
    i = number2                                    
  end                                              
                                                   
  while !((number1 % i == 0) && (number2 % i == 0)) # invert condition. 
    i -= 1                                         
  end                                              
                                                   
  return i                                         
end        

#Anther solution doesnot work!!???????????  Not sure why???????
def greatest_common_factor(number1, number2)
  i = 1
  big_n = []
  while  i < number1 && number1 < number2 || i < number2 && number1 > number2
    if number1%i == 0 && number2%i == 0 
      big_n.push[i]
    end

  i += 1
  end
  
  big_n.sort!
  return big_n[big_n.length - 1]
end

#the `while true` causes the loop to keep happening until the if is true and then the `return` causes the function to return i and exit the loop, while true means infinate loop. 

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
