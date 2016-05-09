# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.


# Not sure why the code doesn't work here????????????????????
def nearby_az(string)
	i = 0
	while i < string.length
	   j = 1
	   while j <= 4
	     if string[i] === "a" && string[ i + j ] === "z"
	    	return true
	     else
	    	return false
	     end
	     j += 1
	   end
	   i += 1
	 end
end

# Another idea that works:
def nearby_az(string)
	distance = string.index('z').to_i - string.index('a').to_i
	if distance <= 3 && distance > 0
		return true
	else
		return false
	end
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
