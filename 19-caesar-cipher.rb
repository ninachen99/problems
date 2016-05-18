# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
#
# You may look at the ASCII printable characters chart:
#
#     http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
#
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
#
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
#
# Difficulty: hard. Because this problem relies on outside
# information, we would not give it to you on the timed challenge. :-)


# Haven't used the '%' to wrap 'z' to 'a', but the solution works. Any better way to refactor it?????????
def caesar_cipher(offset, string)
	new_str = []
	i = 0 
	while i < string.length #&& string =~ /a..z/
	  str_num = string[i].ord + 3
	  
	  #Check special char:
	  
      if string[i] =~ /[^A-Za-z0-9_]/
      	new_str.push(string[i])
      elsif string[i] =~ /[x-z]/	
	    new_str.push((str_num - 26).chr) # Maybe use '%' here? but not sure how the calculation works??????????
	  else
	    new_str.push(str_num.chr)
	  end
	  
	  i += 1
	end
	puts new_str.join("")
	return new_str.join("") 
end

# Solution 2: 

def caesar_cipher(offset, string)
	new_str = []
	string = string.split("")
	string.each do |s|
	  str_num = s.ord + offset
	  
      if str_num <= "z".ord
        new_str.push(str_num.chr)
	  else
	  	# Should i hard code "1" here, or do sth different?????
	    str_num = str_num % ("z".ord) + "a".ord - 1
	    new_str.push(str_num.chr)
	  end
	end
	puts new_str.join("")
	return new_str.join("") 
end

# the space between the strings turn out to be "#"????
# but i split the string, why we still have space????
# How to avoid it?????
#Tests for #caesar_cipher
#===============================================
#def
#caesar_cipher(3, "abc") == "def": true
#def#abc
#caesar_cipher(3, "abc xyz") == "def abc": false
===============================================

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'caesar_cipher(3, "abc") == "def": ' +
  (caesar_cipher(3, 'abc') == 'def').to_s
)
puts(
  'caesar_cipher(3, "abc xyz") == "def abc": ' +
  (caesar_cipher(3, 'abc xyz') == 'def abc').to_s
)
