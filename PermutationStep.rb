=begin
Using the Ruby language, have the function PermutationStep(num) 
take the num parameter being passed and return the next number 
greater than num using the same digits. For example: 
if num is 123 return 132, if it's 12453 return 12534. 
If a number has no greater permutations, return -1 (ie. 999). 
=end

# The solution passed 90% of the tests, but failed 2 tests, 
# i wonder which part of the 
# code didn't cover all possibilities???????????????
def PermutationStep(num)
  arr = num.to_s.split("").map { |e| e.to_i }
  # array of permutation arrays.
  list_arr = arr.permutation.to_a
 # p !list_arr.all? { |e| e.join.to_i <= num }
 # if not all numbers are identical, and all permutations less than the number
  if list_arr.uniq.length > 1 &&  !list_arr.all? { |e| e.join.to_i <= num }
  	# return the permutation here: find the first permutation 
  	# greater than the num. 
     list_arr.find { |e| e.join.to_i > num }.join.to_i 
  else
  	-1
  end
end
   
# keep this function call here    
PermutationStep(11121)  

#x = 876885
#x.to_s.scan(/.../).map {|e| e.to_i }
=begin
Sample Test Cases
Input:11121
Output:11211
1. When the input was 41352 your output was incorrect.
2. When the input was 897654321 your output was incorrect.


Input:41352
Output:41523
=end