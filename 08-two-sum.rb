# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.


# Found the error, but not sure why???????????????????
def two_sum(nums)
	i = 0
	while i < nums.length
		j = 1
		while j < nums.length
			if nums[i] + nums[j] === 0
				return [i, j]
			#else                   # The error is the else condition, why we should return nil only after the while loop????????????
				#return nil
			end
			j += 1
		end
		i += 1
	end
	return nil
    # should return nil here. and delete the else condition. 
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
