#Using the Ruby language, have the function AdditivePersistence(num) take the num 
#parameter being passed which will always be a positive integer and return its 
#additive persistence which is the number of times you must add the digits in num 
#until you reach a single digit. For example: if num is 2718 then your program 
#should return 2 because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9. 


# no clue how to keep adding up the sum
# and count how many times until it reaches
# a single digit????????????????????????????
def AdditivePersistence(num)
 if num <= 9
 	return 0
 end
 
 sum = 0
 counter = 0
 arr = num.to_s.split("")
 arr.each do |n|
   sum = sum + n.to_i
 end
 counter += 1
 sum
 
 
end
   
# keep this function call here    
puts AdditivePersistence(19)  


#Input = 4 Output = 0
#Input = 19 Output = 2