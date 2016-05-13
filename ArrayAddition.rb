#return the string true if any combination of numbers in the array 
#can be added up to equal the largest number in the array, 
#otherwise return the string false. 
#For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true 
#because 4 + 6 + 10 + 3 = 23. 
#The array will not be empty, will not contain all the same elements, and may contain negative numbers. 


def ArrayAdditionI(arr)
   arr = arr.sort!
   largest = arr.pop

   # when i used (0..arr.length-1) here it throws errors. Why? 
   (1..arr.length).each do |i|  
   
   #When invoked with a block, 
   #yields all combinations of length n of elements 
   #from the array and then returns the array itself.
   	  arr.combination(i) do |sum|

   	  	# inject(&:+) or inject(:+), the result is the same here.
   	    return"true" if	sum.inject(:+) == largest  
   	    
   	  end
   end

   return "false"

end

ArrayAdditionI([10,20,30,40,100])  # => "true"

#we use `i` on line 16. So, the values of `i` range from 1 to the length. 
#This is given to `arr.combination(i)`
#If we switch to `0..arr.length-1` then the value of `i` ranges from 0 to length-1. 
#This means `arr.combination(i)` doesn't receive the same numbers.
#{}`(1..arr.length)` => arr.combination(i) gets 1 through `arr.length`
#{}`(0..arr-length-1)` => arr.combination(i) gets 0 through `arr.length-1`
#The number of times it runs is the same, but line 16 is different