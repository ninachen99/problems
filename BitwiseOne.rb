#Using the Ruby language, have the function BitwiseOne(strArr) take the array of 
#strings stored in strArr, which will only contain two strings of equal length 
#that represent binary numbers, and return a final binary string that performed 
#the bitwise OR operation on both strings. A bitwise OR operation places a 0 in 
#the new string where there are zeroes in both binary strings, otherwise it places
#a 1 in that spot. For example: if strArr is ["1001", "0100"] then your program
#should return the string "1101" 


# there are four tests didn't pass. ?????????????????????, score 3. 
def BitwiseOne(strArr)
  first = strArr[0]
  second = strArr[1]
  third = ""
  
  i = 0 
  while i < first.length
      # When i change this line to first[i] == "0" &&
      # second[i] == "0"
      # all tests passes. Why????????????????????????
      if first[i] == second[i]
  	    third << "0"
      else
  	    third << "1"
      end
    
    i += 1
  end
  third      
end
   
# keep this function call here    
puts BitwiseOne(["100", "000"])  

#1. When the input was ("00011", "01010") your output was incorrect.
#2. When the input was ("111","111") your output was incorrect.
#3. When the input was ("1100","0111") your output was incorrect.
#4. When the input was ("101010101","000000011") your output was incorrect.

#"100", "000"
#Output:"100"

#Input:"00011", "01010"
#Output:"01011"