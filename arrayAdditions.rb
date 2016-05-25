=begin
Using the Ruby language, 
have the function ArrayAddition(arr) 
take the array of numbers stored in arr and 
return the string true if any combination of 
numbers in the array can be added up to equal 
the largest number in the array, 
otherwise return the string false. 
For example: if arr contains [4, 6, 23, 10, 1, 3] 
the output should return true 
because 4 + 6 + 10 + 3 = 23. 
The array will not be empty, will not contain 
all the same elements, and may contain negative 
numbers. 
=end

def ArrayAddition(arr)
	target = arr.max
	for i in (1..arr.length-1)
	  arr.combination(i).inject(0) { |x, sum| sum + x }
	    if sum == target
	    	return true
	    else
	    	return false
	    end
	  end
	end	
end
   
# solution 2
def ArrayAddition(arr)
	# pop changes array forever??????
	largest = arr.sort!.pop
	# return all combination of the array
	# in different arrays
	pool = arr.permutation.to_a
	# loop through the array of arrays
	pool.each do |arr|
		sum = 0
		#loop through each array
		arr.each do |num|
			sum += num
			return true if sum == largest
		end
	end
	return false
end




# keep this function call here    
puts ArrayAddition([5,7,16,1,2])  

=begin
Sample Test Cases
Input:5,7,16,1,2
Output:"false"

Input:3,5,-1,8,12
Output:"true"
=end