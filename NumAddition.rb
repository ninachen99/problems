#Using the Ruby language, have the function NumberSearch(str) take the str 
#parameter, search for all the numbers in the string, add them together, then
#return that final number. For example: if str is "88Hello 3World!" the output
#should be 91. You will have to differentiate between single digit numbers and
#multiple digit numbers like in the example above. So "55Hello" and "5Hello 5"
#should return two different answers. Each string will contain at least one letter
#or symbol. 



def NumberAddition(str)
  sum = 0
  # returns the given string with the given patten.
  # had struggle of this line, between split and scan. 
  # they both return array, but scan only returns matching 
  # pattern, whereas split return the entire string with matches.
  puts arr = str.split(/(\d+)/)  #????????????
 
  i = 0
  while i < arr.length 
    sum += arr[i].to_i
    i+= 1
  end
  sum      
end




   
# keep this function call here    
puts NumberAddition("75Number9")  



#Input = "75Number9" Output = 84
#Input = "10 2One Number*1*" Output = 13