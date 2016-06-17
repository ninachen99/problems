determineLCA([3, 2, 1, 12, 4, 5, 13], 5, 4)
#3

def determineLCA(strArr, num1, num2)
	tree = {}
	tree[strArr.first] = {}

	newArr = strArr - [strArr.first]

	newArr.each do |num|
		addNodeToTree(tree, num)
	end

end

def	addNodeToTree(tree, num)
	tree.each do |key, node|
		#key 3
		#node 2
		#num 1
	    if key > num
	    	if node.keys.length > 0
	    		addNodeToTree(node, num)
	    	else
	    		tree[key][num] = {} 
	    	end
	    else
	     	
		end    
	end
end