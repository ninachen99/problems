#Using the Ruby language, have the function RectangleArea(strArr) take the array 
#of strings stored in strArr, which will only contain 4 elements and be in the 
#form (x y) where x and y are both integers, and return the area of the rectangle 
#formed by the 4 points on a Cartesian grid. The 4 elements will be in arbitrary 
#order. For example: if strArr is ["(0 0)", "(3 0)", "(0 2)", "(3 2)"] then your 
#program should return 6 because the width of the rectangle is 3 and the height is
#2 and the area of a rectangle is equal to the width * height. 

# works 85% of the time, failed 3 tests. Any other approach???????

def RectangleArea(strArr)
 if strArr[0][1] == "0" && strArr[0][3] == "0"
 	result = strArr[1][1].to_i * strArr[3][3].to_i
 else
    x = (strArr[2][1].to_i - strArr[1][1].to_i).abs
    y = (strArr[3][3].to_i - strArr[2][3].to_i).abs
 
    result = x * y
 end
 result
end
   

# from the given solutions: 
def RectangleArea(strArr)
  # Why we need #scan and #flatten here????
  pool = strArr.join.scan(/(-?[0-9]+)/).flatten.map{|i|i.to_i}
   # 
   rec_l = [pool[1], pool[3], pool[5], pool[7]].sort
   rec_w = [pool[0], pool[2], pool[4], pool[6]].sort
  
  length = (rec_l[-1] - rec_l[0]).abs
  width = (rec_w[-1] - rec_w[0]).abs
  
  length * width
         
end


# keep this function call here    
RectangleArea(["(-1 -1)","(0 0)","(-1 0)","(0 -1)"])  
#1.When the input was ("(-1 -1)","(0 0)","(-1 0)","(0 -1)") your output was incorrect.
#2. When the input was ("(-2 -2)","(0 0)","(-2 0)","(0 -2)") your output was incorrect.
#3. When the input was ("(0 0)","(8 8)","(0 8)","(8 0)") your output was incorrect.



#Input:"(1 1)","(1 3)","(3 1)","(3 3)"
#Output:4

#Input:"(0 0)","(1 0)","(1 1)","(0 1)"
#Output:1