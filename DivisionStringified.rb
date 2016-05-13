#Using the Ruby language, have the function DivisionStringified(num1,num2) take
#both parameters being passed, divide num1 by num2, and return the result as a 
#string with properly formatted commas. If an answer is only 3 digits long, return
#the number with no commas (ie. 2 / 3 should output "1"). For example: if num1 is
#123456789 and num2 is 10000 the output should be "12,346". 

def DivisionStringified(num1,num2)
  # .to_f produce the result required. 
  divi = (num1.to_f / num2).round
 
  # convert the divi to string then array, then reverse it, 
  # since the comma should start every three numbers from 
  # the end. 
  # slice the array of every three element, then join it with 
  # comma and finanly reverse it to the right order. 

  #Any way to refactor this line???????
  divi.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
 
 
  
end
   
# keep this function call here    
puts DivisionStringified(68749998754, 67)  


#Input = 5 & num2 = 2 Output = "3"
#Input = 6874 & num2 = 67 Output = "103"