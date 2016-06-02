=begin
Using the Ruby language, have the function MultipleBrackets(str) 
take the str parameter being passed and return 1 #ofBrackets 
if the brackets are correctly matched and each one is accounted for. 
Otherwise return 0. For example: if str is "(hello [world])(!)", 
then the output should be 1 3 because all the brackets are matched and 
there are 3 pairs of brackets, but if str is "((hello [world])" 
the the output should be 0 because the brackets do not correctly match up. 
Only "(", ")", "[", and "]" will be used as brackets. 
If str contains no brackets return 1. 
=end

# only one test failed, how to check if the positions of brackets are correct??????????

def multiple_brackets(str)
  # find the numbers of brackets on each side, and see if they all match. 
  brackets1 = str.scan(/[()]/).length
  right_b = str.scan(/\[/).length
  left_b = str.scan(/\]/).length
  brackets2 = right_b + left_b
  total = (brackets1 + brackets2)/2
  return 0 if right_b != left_b
  
  if brackets1 % 2 == 0 && brackets2 % 2 == 0 
  	 return [1, total].join(" ")
  else
  	 return 0
  end
  	
end
   
# keep this function call here    
multiple_brackets("the co[l][]or re(d))()(()" )  


# solution 2: seems the best solution so far: 
def MultipleBrackets(str)

  round = 0
  square = 0
  count = 0
  
  str.each_char do |i|
    if i == "("
      round += 1
    elsif i == ")"
      round -= 1
      count += 1
    end
    
    if i == "["
      square += 1
    elsif i == "]"
      square -= 1
      count += 1 
    end
      
    if round < 0 || square < 0
      return 0
    end
  end
  
  if round == 0 && square == 0 && count == 0
    return 1
  elsif round == 0 && square == 0
    return "1 #{count}"
  else
    return 0
  end
         
end
=begin
2. When the input was "the co[l][]or re(d))()(()" your output was incorrect.
Sample Test Cases
Input:"(coder)[byte)]"
Output:0

Input:"(c([od]er)) b(yt[e])"
Output:1 5

=end