# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.


# Is there any other way only using loop can solve this problem? cleaner code???????
# The logic here is from the solution. But i found it is not easy to read. 
def most_common_letter(string)

	most_common_letter = ""  # what is the best practice? should i use 'nil'?? like the solution did here? 
	most_common_count = 0  #what's the difference of using 0 and nil here? same result????????

	i = 0 
	while i < string.length
		letter = string[i]
		count = 0
		j = 0
		while j < string.length
			if string[j] == letter
				count += 1
			end
			j += 1
		end

		if most_common_count = 0 || most_common_count < count
			most_common_letter = letter
			most_common_count = count
		end
		i += 1
	end
	return [most_common_letter, most_common_count]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
