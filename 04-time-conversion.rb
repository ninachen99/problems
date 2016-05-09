# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.


# How to refactor this code to be better??????
def time_conversion(minutes)
	hours = 0
	while minutes >= 60   # should use while insteand of "if", why??????? (while loop will keep going as long as booleen is true.)
		hours += 1
		minutes -= 60
	end

	if minutes < 10
		minutes_s = '0' + minutes.to_s    
	else
		minutes_s = minutes.to_s
	end
    return hours.to_s + ":" + minutes_s  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
