#Using the Ruby language, have the function ThirdGreatest(strArr) 
#take the array of strings stored in strArr 
#and return the third largest word within in. 
#So for example: if strArr is ["hello", "world", "before", "all"] 
#your output should be world because "before" is 6 letters long, 
#and "hello" and "world" are both 5, but the output should be world 
#because it appeared as the last 5 letter word in the array. 
#If strArr was ["hello", "world", "after", "all"] the output 
#should be after because the first three words are all 5 letters long, 
#so return the last one. The array will have at least three strings
# and each string will only contain letters. 

def ThirdGreatest(strArr)
 
 # when i added "reverse" to my code, it 
 # works 90% of the time, why we should reverse the array here? 
 # but the code doesn't work for the given array on line 24,
 # should i have different approach???????????????
 arr = strArr.reverse.sort_by { |s| s.length }
 arr[-3]

end
   
# keep this function call here    
ThirdGreatest(["bt","ct","mtyyyy"])