#Using the Ruby language, have the function PowersofTwo(num) take the num 
#parameter being passed which will be an integer and return the string true if 
#it's a power of two. If it's not return the string false. For example if the 
#input is 16 then your program should return the string true but if the input is 
#22 then the output should be the string false. 

def PowersofTwo(num)
 return "true" if num & (num-1) == 0 && num != 0
 false
end
   
# keep this function call here    
puts PowersofTwo(0)  

#Input = 4 Output = "true"
#Input = 124 Output = "false"