=begin
Using the Ruby language, have the function SwapII(str) 
take the str parameter and swap the case of each character. 
Then, if a letter is between two numbers (without separation), 
switch the places of the two numbers. For example: if str is "6Hello4 -8World, 
7 yes3" the output should be 4hELLO6 -8wORLD, 7 YES3. 
=end

def SwapII(str)
  result = []
  str.swapcase.split("").each_with_index do |e, i|
  	
  	if e =~ /[0-9]/
  		puts "it is a number"
  		puts i
  		
  	else
  		result << e
  	end
  		
  end
  result.join
         
end
   
#Solution2
def SwapII(str)
  arr = []
  str = str.split("").map{|ltr| ltr.swapcase}.join
  words = str.split(" ")
  arr = words.map do |word|
    if word.scan(/\d\w+\d/) == []
      word
    else
      num_swap(word)
    end
  end
  arr.join(" ")
end

def num_swap(str)
  i = []
  nums = (0..9).to_a.map!{|x| x.to_s}
  str = str.split("")
  str.each_with_index do |e,idx|
    i << idx if nums.include?(e)
  end
  str[i[0]],str[i[1]] = str[i[1]],str[i[0]]
  str.join
end

#solution 3:
def SwapII(str)
  str.swapcase!
  # what's the difference between 'split' and 'split("")'???????????
  words = str.split
 
  words.each do |w|
    nums = w.scan(/\d/)
    
    if nums.size == 2
      x = str.index(digits[0])
      y = str.index(digits[1])
      
      str[x], str[y] = str[y], str[x]
    end
  end
  str
end
# keep this function call here    
SwapII("Hello -5LOL6")  

=begin
Sample Test Cases
Input:"Hello -5LOL6"
Output:"hELLO -6lol5"

Input:"2S 6 du5d4e"
Output:"2s 6 DU4D5E"
=end