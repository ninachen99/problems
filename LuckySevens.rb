
#Write a function lucky_sevens?(numbers), 
#which takes in an array of integers and 
#returns true if any three consecutive elements sum to 7.


# searched, and find each_cons to sovle the problem. 
def lucky_sevens?(numbers)
	numbers.each_cons(3) { |group| return true if group.reduce(:+) === 7 }
	false
	
end

lucky_sevens?([2,1,5,1,0])
lucky_sevens?([7,7,7,7])


#lucky_sevens?([2,1,5,1,0]) == true # => 1 + 5 + 1 == 7
#lucky_sevens?([0,-2,1,8]) == true # => -2 + 1 + 8 == 7
#lucky_sevens?([7,7,7,7]) == false
#lucky_sevens?([3,4,3,4]) == false
#Make sure your code correctly checks for edge cases 
#(i.e. the first and last elements of the array).