=begin
take the str parameter being passed and return the smallest number you can get 
through the following reduction method. The method is: Only the letters a, b, and c 
will be given in str and you must take two different adjacent characters and replace it 
with the third. For example "ac" can be replaced with "b" but "aa" cannot be replaced 
with anything. This method is done repeatedly 
until the string cannot be further reduced, 
and the length of the resulting string is to be outputted. 
For example: if str is "cab", "ca" can be reduced to "b" and you get "bb" 
(you can also reduce it to "cc"). The reduction is done so the output should be 2. 
If str is "bcab", "bc" reduces to "a", so you have "aab", then "ab" reduces to "c", 
and the final string "ac" is reduced to "b" so the output should be 1. 
=end

# Didn't come out of my own solution for this one;
# only tried gsub, then sub which is not global. 
def StringReduction(str)
  until str.split("").uniq.length == 1
        str = str.sub(/ab|ba/, "c").
              sub(/ac|ca/, "b").
              sub(/cb|bc/, "a")
  end
  str.size        
end
   
   
StringReduction("abcabc")  

=begin
Sample Test Cases
Input:"abcabc"
Output:2

Input:"cccc"
Output:4
=end