# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.


# Can we refactor the code to be more efficient and easier to read? How??????
def longest_word(sentence)
	words = sentence.split(" ") # the "" here should have a space, why??? otherwise throw errors!!!???????
	long_word = ""

	i = 0
	while i < words.length
	  current_word = words[i]
	  if long_word == ""
	  	long_word = current_word
	  else long_word.length < current_word.length
	  	long_word = current_word
	  end
	  i += 1
	end
	return long_word
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
