#Write a function disemvowel(string), 
#which takes in a string, and returns that string 
#with all the vowels removed. Treat "y" as a consonant.

def disemvowel(string)
	string.split("").delete_if { |x| ["a", "e", "i", "o", "u"].include? x }.join
	p string.split('')
	
end

disemvowel("foobar")

#disemvowel("foobar") == "fbr"
#disemvowel("ruby") == "rby"
#disemvowel("aeiou") == ""