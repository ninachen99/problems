=begin
read the strArr parameter being passed which will represent two rectangles on a Cartesian coordinate plane 
and will contain 8 coordinates with the first 4 making up rectangle 1 and the last 4 making up rectange 2. 
It will be in the following format: ["(0,0),(2,2),(2,0),(0,2),(1,0),(1,2),(6,0),(6,2)"] Your program should 
determine the area of the space where the two rectangles overlap, and then output the number of times this 
overlapping region can fit into the first rectangle. For the above example, the overlapping region makes up a 
rectangle of area 2, and the first rectangle (the first 4 coordinates) makes up a rectangle of area 4, 
so your program should output 2. The coordinates will all be integers. If there's no overlap between the two 
rectangles return 0. 
=end
def over_lapping_rectangles(strArr)
  # create an array with all numbers
  pool = strArr[0].scan(/(-?[0-9]+)/).flatten.map{|i|i.to_i}
  # convert number array to an array with 8 subarrays.
  # the x-coordinate of the leftmost side of the intersection of the two rectangles is equal to whichever one of these is bigger. 
  puts x_min = [pool[0], pool[8]].max # the rightmost of the left-hand sides
  puts x_max = [pool[2], pool[10]].min # the leftmost of the right-hand sides
 
   y_min = [pool[1], pool[9]].max # the bottommost of the tops
   y_max = [pool[3], pool[11]].min # the topmost of the bottoms.
  
  return 0 if ((x_max < x_min) || (y_max < y_min))
  [[x_min, y_min], [x_max, y_max]]
end
   
   
# keep this function call here    
over_lapping_rectangles(["(0,0),(2,2),(2,0),(0,2),
(1,0),(1,2),(6,0),(6,2)"])  

=begin
Sample Test Cases
Input:"(0,0),(0,-2),(3,0),(3,-2),(2,-1),(3,-1),(2,3),(3,3)"
Output:6

---------------------------------
Input:"(0,0),(5,0),(0,2),(5,2),(2,1),(5,1),(2,-1),(5,-1)"
Output:3
=end









