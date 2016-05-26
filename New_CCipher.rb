=begin
Using the Ruby language, have the function CaesarCipher(str,num) 
take the str parameter and perform a Caesar Cipher shift on it using 
the num parameter as the shifting number. A Caesar Cipher works 
by shifting each letter in the string N places down in the alphabet 
(in this case N will be num). Punctuation, spaces, and capitalization 
	should remain intact. For example if the string is "Caesar Cipher" 
	and num is 2 the output should be "Ecguct Ekrjgt". 
=end

def CaesarCipher(str,num)
  pool = ('a'..'z').to_a # pool = ('a'..'z').to_a*2 also works.
  pool2 = ("A".."Z").to_a
  result = []
  str.split("").each do |letter|
  	if letter =~ /\W/
  		result << letter
  	end
  	# changed index1 = pool.index(letter).to_i + num to below
  	# and all test passed, but doesn't understand it??????
  	# why 26 - num ???????????????
  	index1 = pool.index(letter).to_i - (26-num) # what am going to do if num = 100 or larger???
  	index2 = pool2.index(letter).to_i - (26-num)
  
  	if pool.include?(letter)
  	  new_letter = pool[index1]
  	  result << new_letter
  	  	
  	elsif pool2.include?(letter)
  	  new_letter = pool2[index2]
  	  result << new_letter
     end
  end
    result.join
end
   
# keep this function call here    
CaesarCipher("!#orld hello", 4)  


=begin
Sample Test Cases
Input:"Hello" & num = 4
Output:"Lipps"

Input:"abc" & num = 0
Output:"abc"
=end
