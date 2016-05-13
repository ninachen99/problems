#Using the Ruby language, have the function SecondGreatLow(arr) take the array of
#numbers stored in arr and return the second lowest and second greatest numbers, #
#respectively, separated by a space. For example: if arr contains [7, 7, 12, 98, 106]
#the output should be 12 98. The array will not be empty and will contain at least 2
#numbers. It can get tricky if there's just two numbers! 

# the code here throw error when input is [80, 80], how to adjust 
# the solution so when arr only has two equal numbers??????????????
def SecondGreatLow(arr)
  second_low = ""
  second_high = ""
  
  arr = arr.uniq	
  if arr.length > 2 
    arr = arr.sort!
    second_low = arr[1]
    second_high = arr[-2]
    
  elsif arr.length == 2 
    arr.sort
    second_low = arr[1]
    second_high = arr[0]
  end
  return [second_low, second_high].join("  ")
 
end
   
# keep this function call here    
puts SecondGreatLow([80, 80])  
 # When the input was (2,2,2,5,5,5,6) your output was incorrect.
 # When the input was (7, 7, 90, 1000003) your output was incorrect.



#Input = 1, 42, 42, 180Output = "42 42"
#Input = 4, 90 Output = "90 4"