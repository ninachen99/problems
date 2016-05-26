=begin
Using the Ruby language, have the function SimpleMode(arr) 
take the array of numbers stored in arr and return the number 
that appears most frequently (the mode). 
For example: if arr contains [10, 4, 5, 2, 4] the output should be 4. 
If there is more than one mode return the one that appeared in the array first 
(ie. [5, 10, 10, 6, 5] should return 5 because it appeared first). 
If there is no mode return -1. The array will not be empty. 
=end

def SimpleMode(arr)
	
   	  my_mode = arr.max_by { |n| arr.count(n) }
   	  
      if arr.count(my_mode) > 1
      	my_mode
      else
      	-1
      end
  
end
   
# keep this function call here    

SimpleMode([3,4,1,6,10])  
=begin
Sample Test Cases
Input:5,5,2,2,1
Output:5

Input:3,4,1,6,10
Output:-1
=end