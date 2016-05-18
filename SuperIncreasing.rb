#Using the Ruby language, have the function Superincreasing(arr) take the array of
#numbers stored in arr and determine if the array forms a superincreasing sequence
#where each element in the array is greater than the sum of all previous elements.
#The array will only consist of positive integers. For example: if arr is [1, 3, 
#, 13, 54] then your program should return the string "true" because it forms a 
#superincreasing sequence. If a superincreasing sequence isn't formed, then your 
#program should return the string "false".

def Superincreasing(arr)
  sum = 0
  arr.each do |num|
  	if num <= sum
  		false
  	end
  	puts sum += num
  end
  true
end

# solution 2, don't understand every step?????????
def Superincreasing(arr)
  # ???????????????????????
  arr.reduce(0) {|sum, num| num > sum ? sum += num : (return false)}
  true      
end
 
# can also use array's #slice and #reduce

# keep this function call here    
Superincreasing([1,2,5,10])  


#Input:1,2,3,4
#Output:"false"

#Input:1,2,5,10
#Output:"true"
