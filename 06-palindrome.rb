# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.



# need to locate the letter in string correctly. 

# Refactor it to be better???????????
def palindrome?(string)
	new_str = []
	i = 1
	while i <= string.length  # need to run the while condition before the if condition, why?????
		new_str.push(string[string.length - i])
		i += 1
	end
		
	if string == new_str.join   # when this if condition before the while condition above, it threw errors.
		return true
    else
    	return false
    end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
