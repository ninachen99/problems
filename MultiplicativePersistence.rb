=begin
  Using the Ruby language, have the function MultiplicativePersistence(num) 
  take the num parameter being passed which will always be a positive integer 
  and return its multiplicative persistence which is the number of times you 
  must multiply the digits in num until you reach a single digit. 
  For example: if num is 39 then your program should return 3 because 3 * 9 = 27 
  then 2 * 7 = 14 and finally 1 * 4 = 4 and you stop at 4. 
=end

def MultiplicativePersistence(num)
  # create arr contains digits in the num. 
  # until the num reach single digit
  # keep mutiply it
  freqs = 0
  while num.to_s.length > 1
    puts num.inspect
    arr = num.to_s.split('').map { |n| n.to_i }
    puts arr.inspect
    # still not quite clear of #inject, what 'm' and 'x'
    # represent here???????????????????????????
    num = arr.inject { |m, x| m * x }
    puts num.inspect
    freqs += 1
  end
  freqs           
end
   
# keep this function call here    
puts MultiplicativePersistence(898)  



#Input:4
#Output:0

#Input:25
#Output:2

