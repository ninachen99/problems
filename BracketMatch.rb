=begin
Using the Ruby language, have the function BracketMatcher(str) 
take the str parameter being passed and return 1 if the brackets are correctly 
matched and each one is accounted for. Otherwise return 0. For example: 
if str is "(hello (world))", then the output should be 1, 
but if str is "((hello (world))" the the output should be 0 
because the brackets do not correctly match up. Only "(" and ")" 
will be used as brackets. If str contains no brackets return 1. 

There is one test didn't past, although the "()" count to be even, 
but it is not in the right order, how to adjust the code then?????????????
1. When the input was "the color re(d))()(()" your output was incorrect.
=end

def BracketMatcher(str)
  brackets = str.delete(' ').scan(/\W/).length
  # code goes here
  if brackets % 2 === 0
  	1
  else
  	0
  end
         
end
     
BracketMatcher("the color re(d))()(()")  

#solution 2, use #count for string:
# has the same problem. 
def BracketMatcher(str)
    str.count('(') == str.count(')') ? 1 : 0
end


=begin

Sample Test Cases
Input:"(coder)(byte))"
Output:0

Input:"(c(oder)) b(yte)"
Output:1
=end