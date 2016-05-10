# Using the Ruby language, have the function SimpleSymbols(str) take the str parameter being passed 
# and determine if it is an acceptable sequence by either returning the string true or false. 
# The str parameter will be composed of + and = symbols with several letters between them (ie. ++d+===+c++==a) 
# and for the string to be true each letter must be surrounded by a '+' symbol. So the string to the left would be false. 
# The string will not be empty and will have at least one letter. 



# Haven't consider the "=" symbol, but test runs ok. Does that mean we don't have to consider the "="?????????
def SimpleSymbols(str)
  if str =~ /[a-zA-Z]/ && str != ""
  	i = 1
  	while i < str.length
  	  if str[i-1] != "+" || str[i + 1] != "+"
  	  	return false
      else
  	  	return true 
  	  end
  	  i += 1
  # code goes here
    end
  end
end
   
# keep this function call here    
puts SimpleSymbols(STDIN.gets)

# keep this function call here    
puts SimpleSymbols("+d+=3=+s+") 
puts SimpleSymbols("f++d+") 
