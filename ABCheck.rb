# have the function ABCheck(str) take the str parameter being passed 
# and return the string true if the characters a and b 
# are separated by exactly 3 places anywhere in the string 
# at least once (ie. "lane borrowed" would result in true 
# because there is exactly three characters between a and b). 
# Otherwise return the string false. 

# Other solutions
def ABCheck(str)
  str.scan(/a...b/) == [] ? false : true # how this method tests 'b' before 'a'? 
end
   
   
ABCheck("laura sobs")



# This is my solution, works. But how to refactor it????????
def ABCheck(str)

  i = 0
  while i < str.length
  puts str[i]
    while str[i] == 'a' && str[i + 4] == 'b' || str[i] == 'b' && str[i +4] == 'a'
    	puts str[i]
    	return 'true'
    end
    i += 1
  end
  return 'false'
end
   
# keep this function call here    
puts ABCheck(STDIN.gets)