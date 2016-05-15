#Using the Ruby language, have the function DashInsert(str) insert dashes ('-')
#between each two odd numbers in str. For example: if str is 454793 the output
#should be 4547-9-3. Don't count zero as an odd number. 


# Works. Butif we don't use while loop here, 
# what's the better solution for refactoring???????

def DashInsert(str)
  
  i = 0
  while i < str.length - 1
    if str[i].to_i % 2 != 0 && str[i+1].to_i % 2 != 0 && str[i].to_i != 0 
    	 str[i] = str[i] + "-"
    end
    i += 1
  end
  
  str
         
end
   
# keep this function call here    
puts DashInsert('56730')  




#Input = 99946 Output = 9-9-946
#Input = 56730 Output = 567-30




