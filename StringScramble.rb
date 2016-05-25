#Using the Ruby language, have the function StringScramble(str1,str2) take both parameters being passed and return the string true if a portion of str1 characters can be rearranged to match str2, otherwise return the string false. For example: if str1 is "rkqodlw" and str2 is "world" the output should return true. Punctuation and symbols will not be entered with the parameters. 

# solution 1, 3 points, didn't consider only portion of str1
# may contain str2. 
def StringScramble(str1,str2)
   x = str1.chars.sort.join
   y = str2.chars.sort.join
   if x.include?(y)
   	 return true
   else
     return false
   end        
end

# Solution 2: thought it earlier, but 
# made syntex mistake of the .include?
# now it works. 
def StringScramble(str1,str2)
   x = str1.chars
   y = str2.chars
   y.each do |s|
   	# if i use return true if x.include?(s)
   	# it doesn't work, why????????????????
   	# since it will return true once if finds a match
   	# then the function will stop running. 
   	 return false if !x.include?(s) 
   end
   return true    
end

   
# keep this function call here    
puts StringScramble("h3llko", "hello")  

=begin
Sample Test Cases
Input:"cdore" & str2= "coder"
Output:"true"

Input:"h3llko" & str2 = "hello"
Output:"false"
=end