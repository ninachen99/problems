# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.


# Deleted one while loop, then the code works, how to refactor it?????????????????
def scramble_string(string, positions)
	new_str = []
	#i = 0
	#while i < string.length
	  j = 0
	  while j < positions.length
	    new_str.push(string[positions[j]])
	    j += 1
	  end
	  #i += 1
	#end
	puts new_str.join("")
	return new_str.join("")
	    
	    
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
  (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s
)
puts(
  'scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm"): ' +
  (scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm").to_s
)
