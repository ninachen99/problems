# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
# Don't use String's reverse method; that would be too simple.
# Difficulty: easy.
# code works. 
#================================================================

# the solution works, if we still use loop, can we refactor the entire method to be more efficient??????
def reverse(string)
	new_str = []
	i = 0
	while i < string.length
		letter = string[((string.length - 1)  - i)] # any way to refactor this line for better readability???????
		new_str = new_str.push(letter)
		i += 1
	end
	return new_str.join
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)
