#Using the Ruby language, have the function ChangingSequence(arr) take the array of numbers stored in arr and return the index at which the numbers stop increasing and begin decreasing or stop decreasing and begin increasing. For example: if arr is [1, 2, 4, 6, 4, 3, 1] then your program should return 3 because 6 is the last point in the array where the numbers were increasing and the next number begins a decreasing sequence. The array will contain at least 3 numbers and it may contains only a single sequence, increasing or decreasing. If there is only a single sequence in the array, then your program should return -1. Indexing should begin with 0. 

def ChangingSequence(arr)
  # compare arr with its sorted self
  # if equals, then return -1
  if arr == arr.sort || arr == arr.sort.reverse
  	return -1
  
  # if not, sort arr and find the greatest num.
  # then retrieve its index in oringinal array. 
  else
  	new_a = arr.sort
    arr.index(new_a[-1])
  end
  
end
   
# keep this function call here    
puts ChangingSequence([1, 2, 4, 6, 4, 3, 1])  

#Input:-4, -2, 9, 10
#Output:-1

#Input:5, 4, 3, 2, 10, 11
#Output:3

# test errors????????????????
#1. When the input was (5, 4, 3, 2, 10, 11) your output was incorrect.
#2. When the input was (3, 2, 1, 0, -1, -2, 10) your output was incorrect.


# given solution:
def ChangingSequence(arr)
  answer = ""
  arr.each_with_index do |num, index|
    next if index == 0
    break if index == arr.length - 1
    answer = index if arr[index] > arr[index + 1] && arr[0] < arr[1]
    answer = index if arr[index] < arr[index + 1] && arr[0] > arr[1]
    break if answer.class == Fixnum
  end
  if answer.class == Fixnum
    answer
  else
    -1
  end
end

# another given solution: each_with_index 
# smart solution. 
def ChangingSequence(arr)
  if arr[0] < arr[1]
    arr.each_with_index{|n, i| return (i - 1) if n < arr[i - 1]}
  else
    arr.each_with_index{|n, i| return (i - 1) if n > arr[i - 1]}
  end
  -1
end

