#Using the Ruby language, have the function AdditivePersistence(num) take the num 
#parameter being passed which will always be a positive integer and return its 
#additive persistence which is the number of times you must add the digits in num 
#until you reach a single digit. For example: if num is 2718 then your program 
#should return 2 because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9. 


# the solution also works on problems of multiplication
# persistance. kind cool. 
def AdditivePersistence(num)
  freqs = 0
  while num.to_s.length > 1
    arr = num.to_s.split("").map { |n| n.to_i }
    num = arr.inject { |sum, i| sum + i }
    freqs += 1
  end
  freqs
end
   
# keep this function call here    
puts AdditivePersistence(19)  


#Input = 4 Output = 0
#Input = 19 Output = 2