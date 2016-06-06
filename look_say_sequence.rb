=begin
Using the Ruby language, have the function LookSaySequence(num) take the num parameter being passed and return the next number in the sequence according to the following rule: to generate the next number in a sequence read off the digits of the given number, counting the number of digits in groups of the same digit. For example, the sequence beginning with 1 would be: 1, 11, 21, 1211, ... The 11 comes from there being "one 1" before it and the 21 comes from there being "two 1's" before it. So your program should return the next number in the sequence given num. 
=end

def look_say_sequence(num)
  #The regex pattern matches any non-newline character, followed by a run of zero or more of the exact same character. Replacing those matches with a count of the matched run followed by that first unique character will generate a single step in the sequence. 
  num.to_s.gsub(/(.)\1*/) { |s| "#{s.size}#{s[0,1]}" }.to_i
         
end

# another solution without regex, using each_with_index:

def look_say_sequence(num)
	result = []
	counter = 1
	digits = num.to_s.split("")
	digits.each_with_index do |n, idx|
		if n == digits[idx + 1]
			counter += 1
		else
			result << counter
			result << n
			#counter = 1
		end
	end
    result.join.to_i
 
end
   
   
# keep this function call here    
LookSaySequence(1211)  
=begin
Sample Test Cases
Input:1211
Output:111221

Input:2466
Output:121426
=end