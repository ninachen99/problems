=begin
Using the Ruby language, have the function SymmetricTree(strArr) take the array of strings stored in strArr, which will represent a binary tree, and determine if the tree is symmetric (a mirror image of itself). The array will be implemented similar to how a binary heap is implemented, except the tree may not be complete and NULL nodes on any level of the tree will be represented with a #. For example: if strArr is ["1", "2", "2", "3", "#", "#", "3"] then this tree looks like the following: 
For the input above, your program should return the string true because the binary tree is symmetric. 
=end

#1. When the input was ("1", "4", "4", "3", "7", "7", "3", "9", "#", "#", "#", "#", "#", "#", "1") your output was incorrect.
# not sure where to improve??????????????????????
# seems other solutions based on creating a binary tree
# but what is the terminology of binary tree???????????
def symmetric_tree(strArr)
  # if only 3 element in the array.
  return 'true' if strArr.length == 1
  return 'false' if strArr[1] != strArr[2]
  return 'false' if strArr.length == 3 && strArr[1] != strArr[2]
  return 'true' if strArr.length == 3 && strArr[1] == strArr[2]
  return 'false' if (strArr.length - 1) % 2 != 0
  if (strArr.length - 1) % 2 == 0
  	# delete the root of the binary tree
  	strArr.shift
  	# if the next two items are equal, delete them too.
  	if strArr[0] == strArr[1]
  	  strArr.shift(2)
  	  # create sub arrays inside the array
  	  new_arr = strArr.each_slice(2).to_a 
  	  # compare each sub arrays.
  	  i = 0
  	  while i < new_arr.length - 1
  	    if new_arr[i] == new_arr[i+1].reverse
  	    	return 'true'
  	    else
  	        return 'false'
  	    end
  	  i += 1
  	  end
  	end
  end
end
   
# keep this function call here    
symmetric_tree(["10", "2", "2", "#", "1", "1", "#"])  


=begin
Sample Test Cases
Input:"4", "3", "4"
Output:"false"

Input:"10", "2", "2", "#", "1", "1", "#"
Output:"true"
=end
 

=begin
Sample Test Cases
Input:"01111", "01101", "00011", "11110"
# not sure why this one return 3, should it be 2??????????????????
Output:3

Input:"1011", "0010"
Output:2
=end