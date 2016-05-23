#Write a function oddball_sum(numbers), which takes in an array of integers and returns the sum of all the odd elements.

# Solution 1:
def oddball_sum(numbers)
	sum = 0
	i = 0
	while i < numbers.length
	  if numbers[i] % 2 != 0
	  	sum += numbers[i]
	  end
	  i+= 1
	end
	sum
end

# Solution 2:
def oddball_sum(numbers)
	sum = 0
	numbers.each do |num|
		if num % 2 != 0
			sum += num
		end
			
	end
	sum
end
oddball_sum([1,2,3,4,5])


#oddball_sum([1,2,3,4,5]) == 9 # => 1 + 3 + 5 == 9
#oddball_sum([0,6,4,4]) == 0
#oddball_sum([1,2,1]) == 2