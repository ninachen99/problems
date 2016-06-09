=begin
Using the Ruby language, have the function BinarySearchTreeLCA(strArr) take the array of strings stored in strArr, which will contain 3 elements: the first element will be a binary search tree with all unique values in a preorder traversal array, the second and third elements will be two different values, and your goal is to find the lowest common ancestor of these two values. For example: if strArr is ["[10, 5, 1, 7, 40, 50]", "1", "7"] then this tree looks like the following: 
For the input above, your program should return 5 because that is the value of the node that is the LCA of the two nodes with values 1 and 7. You can assume the two nodes you are searching for in the tree will exist somewhere in the tree.
1. When the input was ("[3, 2, 1, 12, 4, 5, 13]", "5", "4") your output was incorrect.
2. When the input was ("[5, 3, 1, 7, 6, 12, 45, 32]", "6", "45") your output was incorrect.
3. When the input was ("[5, 8, 10, 12, 78, 102]", "102", "12") your output was incorrect.
=end


	# first check if the two nums are under the same node. 
	# if the two num is under the same node, and one of the two nums is less than the number before it, then the number before it in the array should be the LCA, elsif, if the two nums both greater than the number before them, then the LCA is two numbers to the left. 
	# if the two nums are not under the same node, and is the first two numbers in the array, then the root number is the LCA
    # if the two nums are not under the same node, and not the first two, return root????
   
   # turn first string into array with integers.
 def binary_search_tree_LCA(strArr)
   tree = []
   strArr[0].split(",").each do |str|
     tree << str.scan(/\d+/)[0].to_i
   end
  p tree
   # the root number, fixnum
  p root = tree.slice(0)
  
   # turn second and third str into integers.
   branch = []
   branch << strArr[1].to_i
   branch << strArr[2].to_i
   # find the index of first number in branch
   p idx = tree.index(branch[0])
   return root if branch.include? root
   if tree.index(branch[0]) == tree.index(branch[1]) - 1
     if branch[0] <= tree[idx - 1] || branch[1] <= tree[idx - 1]
   	  return tree[idx - 1]
     else
   	  return tree[idx - 2]
     end
   else
   	 return root
   end
end
   
   
# keep this function call here    
binary_search_tree_LCA(["[3, 2, 1, 12, 4, 5, 13]", "5", "13"])  

=begin
Sample Test Cases
Input:"[10, 5, 1, 7, 40, 50]", "5", "10"
Output:10
Input:"[3, 2, 1, 12, 4, 5, 13]", "5", "13"
Output:12
=end


# solution 2:
# 1. When the input was ("[3, 2, 1, 12, 4, 5, 13]", "5", "4") your output was incorrect.
# 2. When the input was ("[5, 3, 1, 7, 6, 12, 45, 32]", "6", "45") your output was incorrect.
# 3. When the input was ("[5, 8, 10, 12, 78, 102]", "102", "12") your output was incorrect.


def binary_search_tree_LCA(strArr)
   tree = []
   strArr[0].split(",").each do |str|
     tree << str.scan(/\d+/)[0].to_i
   end
  #p tree
   # the root number, fixnum
   root = tree.slice(0)
  
   # turn second and third str into integers.
   branch = []
   branch << strArr[1].to_i
   branch << strArr[2].to_i
   # find the index of first number in branch
   p idx1 = tree.index(branch[0])
   p idx2 = tree.index(branch[1])
   return root if branch.include? root
   if idx1 == idx2 - 1
     if branch[0] <= tree[idx1 - 1] || branch[1] <= tree[idx1 - 1]
   	  return tree[idx1 - 1]
     else
   	  return tree[idx1 - 2]
     end
   # if the two nums has reverse index in the tree.
   elsif idx1 == idx2 + 1
     if branch[0] <= tree[idx2 - 1] || branch[1] <= tree[idx2 - 1]
     	return tree[idx2 - 1]
     else
     	return tree[idx2 + 1]
     end
   else
   	 return root
   end
end


