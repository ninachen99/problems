# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

# This one most from the given solution. 
def longest_palindrome(string)
  result = ""
  
  i = 0

  while i < string.length
    j = 1
    while j <= string.length - i
      sub_s = string.slice(i, j)
      
      if palindrome?(sub_s) && (sub_s.length >= result.length) # had struggles of this line. ?????
          result = sub_s
      end
        j += 1
    end
    i += 1
  end
  return result
end




# Another solution doesn't work????? not sure why????????????????
def longest_palindrome(string)
  results = []
  i = 0
  while i < string.length
    j = 1
    while j <= string.length - i  # seems doesn't work. ????
      sub_s = string.slice(i, j)
      if palindrome?(sub_s)
        results.push(sub_s)
      end
      j += 1
    end
    i += 1
  end
  puts results
  
  x = 0
  while x  < results.length
    y = 1
    while y < results.length - x
      if results[x].length > results[y].length
        return results[x]
      else
        return results[y]
      end
      y += 1
    end
    x += 1
  end
  
end











# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
