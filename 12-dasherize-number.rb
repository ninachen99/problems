# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.


# This one is from the given solution, and found the pre_digit is hard to read??????????
def dasherize_number(num)
	num_s = num.to_s
  result = ""
	i = 0
	while i < num_s.length
		digit = num_s[i].to_i 
		if i > 0
			pre_digit = num_s[i - 1].to_i
			if pre_digit%2 != 0 || digit%2 != 0
				result += "-"
			end
			#result += num_s[i], not sure why this line should not be here??????????
		end
		result += num_s[i]
		i += 1
		
	end
	return result
end

# another solution: but doesn't work yet. ??????????? the goal of this solution is to only focus on current number. 
def dasherize_number(num)
	num_s = num.to_s
    result = ""
  
    i = 0
    while i < num_s.length
	      digit = num_s[i].to_i
	      
	      if i == 0 && digit.odd?
	      	result = digit.to_s + "-"
	      
	      elsif i > 0 && i < num_s.length - 1 && digit.odd? || i == num_s.length - 1 && digit.odd?
	        result += "-"
	
	      end
	      
	      result += num_s[i]
	      i += 1
    end
    puts result
    return result
end

# another, works, but also focus on the number and previous number, inspired by the given solution.
def dasherize_number(num)
    num = num.to_s.split("").map{|x| x.to_i}
    result = ""
    i = 0

    while i < num.length
        current = num[i]
        if i > 0
            last = num[i - 1]
            if last % 2 == 1 || current % 2 == 1
                result += "-"
            end
         end
         result += num[i].to_s
         i += 1
     end
     result
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
