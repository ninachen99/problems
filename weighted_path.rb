=begin
Using the Ruby language, have the function 
WeightedPath(strArr) take strArr which will be an array of 
strings which models a non-looping weighted Graph. 
The structure of the array will be as follows: 
The first element in the array will be the number of nodes N (points) 
in the array as a string. The next N elements will be the nodes 
which can be anything (A, B, C .. Brick Street, Main Street .. etc.). 
Then after the Nth element, the rest of the elements in the array will be 
the connections between all of the nodes along with their weights (integers) 
separated by the pipe symbol (|). They will look like this: 
(A|B|3, B|C|12 .. Brick Street|Main Street|14 .. etc.). Although, 
there may exist no connections at all. 

An example of strArr may be: ["4","A","B","C","D","A|B|1","B|D|9","B|C|3","C|D|4"]. 
Your program should return the shortest path when the weights are added up 
from node to node from the first Node to the last Node in the array separated by dashes.
 So in the example above the output should be A-B-C-D. Here is another example with strArr 
 being ["7","A","B","C","D","E","F","G","A|B|1",
 "A|E|9","B|C|2","C|D|1","D|F|2","E|D|6","F|G|2"]. 
 The output for this array should be A-B-C-D-F-G. 
 There will only ever be one shortest path for the array. 
 If no path between the first and last node exists, return -1. 
 The array will at minimum have two nodes. 
 Also, the connection A-B for example, means that A can get to B and B can get to A. 
 A path may not go through any Node more than once. 
=end

def weighted_path(strArr)
	# find out the length and first and last nodes. 
	number_of_nodes = strArr[0].to_i # an integer of nodes size value. 
	first_node = strArr[1] # a string value 
	last_node = strArr[number_of_nodes] # a string value 
	
	nodes_with_weight_arr = strArr.slice((number_of_nodes + 1)..(strArr.size - 1))
	
	# weights array without the pipe lines: 
	normalized_nodes_with_weight_arr = []
	nodes_with_weight_arr.map do |str|
	    normalized_nodes_with_weight_arr << str.split("|").join  # sth like "AB2"
	end 
	p normalized_nodes_with_weight_arr
	
	# iterate through the array and find the shortest path: 
	
	
end
weighted_path(["4","A","B","C","D", "A|B|2", "C|B|11", "C|D|3", "B|D|2"])


# another solution: 
def weighted_path(strArr)
  length = strArr.shift.to_i
  nodes = strArr.slice!(0, length)
  paths = strArr.clone
  
  graph = map(nodes, paths)
  available_routes = find_routes(graph, nodes.first, nodes.last)
  available_routes.empty? ? -1 : least_weighted(available_routes, graph)
end

def map(nodes, paths)  
  graph = Hash.new { |hash, key| hash[key] = Hash.new(&hash.default_proc) }
  paths.each do |path|
    from, to, weight = path.split('|') # ["A", "B", "2"]
    graph[from][to] = weight.to_i 
    graph[to][from] = weight.to_i
  end
  p graph
  # {"A"=>{"B"=>2}, "B"=>{"A"=>2, "C"=>11, "D"=>2}, "C"=>{"B"=>11, "D"=>3}, "D"=>{"C"=>3, "B"=>2}}
end

def find_routes(graph, start, finish, route=[])
  return find_routes(graph, start, finish, [start]) if route.empty?
  return [route] if route.last == finish

  current = []
  graph[route.last].keys.each do |node|
    unless route.include?(node)
      current += find_routes(graph, start, finish, route + [node])
    end
  end
  current
end

def least_weighted(routes, graph)
  weighted = {}
  routes.each{|r| weighted[r.join('-')] = find_weights(r, graph)}
  weighted.key(weighted.values.min)
end

def find_weights(route, graph)
  sum = 0
  for i in 1.upto(route.length - 1)
    from = route[i - 1]
    to = route[i]
    sum += graph[from][to]
  end
 p sum
end
weighted_path(["4","A","B","C","D", "A|B|2", "C|B|11", "C|D|3", "B|D|2"])

=begin
Input:"4","A","B","C","D", "A|B|2", "C|B|11", "C|D|3", "B|D|2"
Output:"A-B-D"

Input:"4","x","y","z","w","x|y|2","y|z|14", "z|y|31"
Output:-1
=end 
#antoher solution
MAXINT = 1 << 32

# normalize the given data: 
def defarq_input(input)
	size = input.shift.to_i 
	nodes = input.shift(size)
	edges = input #["A|B|2", "C|B|11", "C|D|3", "B|D|2"]
    [size, nodes, edges]
end

# puts nodes with weights in seperate arrays. 
# further normalize the data. 
def bidirectional_edges(edges)
	edges.inject([]) { |arr, str| 
		orig, dest, weight = str.split('|') 
		arr << [orig, dest, weight]
		arr << [dest, orig, weight]
		arr
	}
end
#[["A", "B", "2"], ["B", "A", "2"], ["C", "B", "11"], ["B", "C", "11"], ["C", "D", "3"], ["D", "C", "3"], ["B", "D", "2"], ["D", "B", "2"]]

# use nodes and edges to build a graph! basically a hash. 
def build_graph(nodes, edges)
	graph = nodes.collect do |node| 
		node_edges = edges.select { |edge| edge[0] == node}.collect { |edge| [edge[1], edge[2].to_i]}
		[node, Hash[node_edges]]
	end
	Hash[graph]
end

# final: 
# build a graph shows all connections between nodes. 
def build_connections_hash(strArr)
  size = strArr[0].to_i
  nodes = strArr.slice(1..size)
  connections = strArr.slice(size + 1..strArr.length)
  con_arr = [] # this is the to and from array
  connections.each do |str|
 	first, second, weight = str.split('|') # [items inside here]
 	con_arr << [first, second, weight] # push array into an empty array
 	con_arr << [second, first, weight] # reverse connections too! 
  end
  # con_arr: [["A", "B", "2"], ["B", "A", "2"], ["C", "B", "11"], ["B", "C", "11"], ["C", "D", "3"], ["D", "C", "3"], ["B", "D", "2"], ["D", "B", "2"]]
  graph = nodes.map do |node|
  node_connections = con_arr.select { |con| con[0] == node }.collect { |con| [con[1], con[2].to_i] }
      [ node, Hash[node_connections]]
  end 
  Hash[graph]	                              
  # graph: {"A"=>{"B"=>2}, "B"=>{"A"=>2, "C"=>11, "D"=>2}, "C"=>{"B"=>11, "D"=>3}, "D"=>{"C"=>3, "B"=>2}}
end


build_connections_hash(["4","A","B","C","D", "A|B|2", "C|B|11", "C|D|3", "B|D|2"]) == {"A"=>{"B"=>2}, "B"=>{"A"=>2, "C"=>11, "D"=>2}, "C"=>{"B"=>11, "D"=>3}, "D"=>{"C"=>3, "B"=>2}}




























