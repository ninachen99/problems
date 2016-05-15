#Using the Ruby language, have the function MeanMode(arr) take the array of
#numbers stored in arr and return 1 if the mode equals the mean, 0 if they don't
#equal each other (ie. [5, 3, 3, 3, 1] should return 1 because the mode (3) equals
#the mean (3)). The array will not be empty, will only contain positive integers
#and will not contain more than one mode. 

def MeanMode(arr)
  total = arr.inject(0) { |sum, x| sum+=x }
  my_mean = total/arr.length

  # find the number appears most often
  # first build a hash and map each value in the arrary to its frequency
  freqs = arr.inject(Hash.new(0)) { |k, v| k[v] += 1; k } 
  # why in the hash, we need 'k' after 'k[v]'' += 1???????????????????????
  # then use the freqs table to find the element with the highest frequency
  my_mode = arr.max_by { |v| freqs[v] }
  return 0 if arr.uniq.length === arr.length || my_mean != my_mode
  return 1 if my_mean == my_mode
  
end
   
# keep this function call here    
#puts MeanMode([1, 2, 3]) 
puts MeanMode([4, 4, 4, 6 ,2])
#Input = 1, 2, 3 Output = 0
#Input = 4, 4, 4, 6, 2 Output = 1