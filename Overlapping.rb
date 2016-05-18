#Using the Ruby language, have the function OverlappingRanges(arr) 
#take the array of numbers stored in arr which will contain 5 
#positive integers, the first two representing a range of numbers (a to b), 
#the next 2 also representing another range of integers (c to d), 
#and a final 5th element (x) which will also be a positive integer, 
#and return the string true if both sets of ranges overlap by at least x numbers.
# For example: if arr is [4, 10, 2, 6, 3] then your program should 
#return the string true. The first range of numbers are 4, 5, 6, 7, 8, 9, 10 
#and the second range of numbers are 2, 3, 4, 5, 6. The last element 
#in the array is 3, and there are 3 numbers that overlap between both ranges:
# 4, 5, and 6. If both ranges do not overlap by at least x numbers, 
#then your program should return the string false. 

def OverlappingRanges(arr)
  #create two arrays
  arr1 =  (arr[0]..arr[1]).to_a
  arr2 = (arr[2]..arr[3]).to_a
  # find the overlap number in the two array.
   arr1 & arr2
  # check the length of the overlap numbers
  # in the array.
  if (arr1 & arr2).length >= arr[4]
  	return true
  end
  return false     
end
   
# keep this function call here    
puts OverlappingRanges([5,11,1,5,1])  


#Input:5,11,1,5,1
#Output:true

#Input:1,8,2,4,4
#Output:false