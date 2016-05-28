=begin
Using the Ruby language, have the function DashInsertII(str) 
insert dashes ('-') between each two odd numbers and insert 
asterisks ('*') between each two even numbers in str. 
For example: if str is 4546793 the output should be 454*67-9-3. 
Don't count zero as an odd or even number. 
=end

# failed, any way i can fix the "-" between odd and even???????
#1. When the input was "10120" your output was incorrect.
#2. When the input was "39904467" your output was incorrect.
#3. When the input was "60497642" your output was incorrect.
def DashInsertII(num)
	result = ""
	array = num.split("")
	array.each_with_index do |n, idx|
		break if array[idx] == ""
		if array[idx].to_i % 2 != 0 && array[idx + 1].to_i % 2 != 0
			n += "-"
		elsif array[idx].to_i % 2 == 0 && array[idx + 1].to_i % 2 == 0 && array[idx + 1] != ""
		    n += "*"
		end
	result += n
	end
	
    if result[result.length-1] =~ /\D/
       result.slice(0..(result.length - 2))
    else
    	result
    end
end

#solution 2: works!
def DashInsertII(num)
	num.gsub(/([13579])(?=[13579])/, '\1-')
	   .gsub(/([2468])(?=[2468])/, '\1*')
end
   
# keep this function call here    
DashInsertII('99946')  

=begin
Sample Test Cases
Input:99946
Output:9-9-94*6

Input:56647304
Output:56*6*47-304
=end