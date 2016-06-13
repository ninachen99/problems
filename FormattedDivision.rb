=begin
Using the Ruby language, have the function FormattedDivision(num1,num2) 
take both parameters being passed, divide num1 by num2, and return the result 
as a string with properly formatted commas and 4 significant digits after the decimal place.
 For example: if num1 is 123456789 and num2 is. 10000 the output should be "12,345.6789". 
 The output must contain a number in the one's place even if it is a zero. 
=end

# solution 1: 
def FormattedDivision(num1,num2)
  result = '%.4f' %[(num1.to_f/num2).round(4).to_s]
  
  front = result.slice(0..(result.index(".") - 1))
                .chars.to_a.reverse.each_slice(3)
                .map(&:join).join(",").reverse 
# here is what happended inside front:
=begin
p result.slice(0..(result.index('.')-1))  # => "1234" 
p result.slice(0..(result.index('.')-1)).chars.reverse # => ["4", "3", "2", "1"]

p result.slice(0..(result.index('.')-1)).chars.reverse.each_slice(3) #=> Enumerator
p result.slice(0..(result.index('.')-1)).chars.reverse.each_slice(3).map(&:join) #=> ["432", "1"]
p result.slice(0..(result.index('.')-1)).chars.reverse.each_slice(3).map(&:join).join(",") # "432,1"
=end
# How to use Enumerator class in its best???????????????????????????????????
  back = result.slice((result.index(".")..result.length))
  
  final_result = front + back
  
  
end
#number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
# keep this function call here    
FormattedDivision(2, 3)  
=begin
Sample Test Cases
Input:2 & num2 = 3
Output:"0.6667"

Input:10 & num2 = 10
Output:"1.0000"
=end