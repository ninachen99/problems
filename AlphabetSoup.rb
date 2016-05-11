#Using the Ruby language, have the function AlphabetSoup(str) take the str string parameter being passed 
#and return the string with the letters in alphabetical order (ie. hello becomes ehllo). 
#Assume numbers and punctuation symbols will not be included in the string. 

def AlphabetSoup(str)
  if str =~ /[a-zA-Z]/
    return str.chars.sort.join
  end
  # code goes here       
end

# Refactor the code above:

def AlphabetSoup(str)
	return str.chars.sort.join if str =~ /[a-zA-Z]/
end


# keep this function call here    
puts AlphabetSoup(STDIN.gets)  


