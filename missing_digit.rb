=begin
Using the Ruby language, have the function MissingDigit(str) 
take the str parameter, which will be a simple mathematical 
formula with three numbers, a single operator (+, -, *, or /) 
and an equal sign (=) and return the digit that 
completes the equation. In one of the numbers in the equation, 
there will be an x character, and your program should determine 
what digit is missing. For example, if str is "3x + 12 = 46" 
then your program should output 4. The x character can appear 
in any of the three numbers and all three numbers will be greater 
than or equal to 0 and less than or equal to 1000000. 
=end

def missing_digit(str)
  # turn the str into array with no whitespaces
  str = str.split(" ")

  # find x and cal result. 
  if str[4].include?"x"
  	var = str[4]
  	result = str[0].to_i + str[2].to_i if str[1] == "+"
  	result = str[0].to_i - str[2].to_i if str[1] == "-"
  	result = str[0].to_i * str[2].to_i if str[1] == "*"
  	result = str[0].to_i / str[2].to_i if str[1] == "/"
  elsif str[0].include?"x"
  	var = str[0]
  	result = str[4].to_i - str[2].to_i if str[1] == "+"
  	result = str[4].to_i + str[2].to_i if str[1] == "-"
  	result = str[4].to_i / str[2].to_i if str[1] == "*"
  	result = str[4].to_i * str[2].to_i if str[1] == "/"
   elsif str[2].include?"x"
   	var = str[2]
   	result = str[4].to_i - str[0].to_i if str[1] == "+"
   	result = str[0].to_i = str[4].to_i if str[1] == "-"
   	result = str[4].to_i / str[0].to_i if str[1] == "*"
   	result = str[0].to_i / str[4].to_i if str[1] == "/"
   end

   # check if var x is alone or with other nums
   if var == "x"
   	return result
   else 
   	missing = var.index("x")
   	return result.to_s[missing]
   end        
end

# keep this function call here    
puts MissingDigit(STDIN.gets)
# keep this function call here    
missing_digit(STDIN.gets)  
=begin
Sample Test Cases
Input:"4 - 2 = x"
Output:2

Input:"1x0 * 12 = 1200"
Output:0
=end