=begin
Using the Ruby language, have the function NumberEncoding(str) take the str parameter and encode the message according to the following rule: encode every letter into its corresponding numbered position in the alphabet. Symbols and spaces will also be used in the input. For example: if str is "af5c a#!" then your program should return 1653 1#!. 
=end
def number_encoding(str)
	arr = ('a'..'z').to_a
    # get index of element in an array.
	arr.index('a')
    str = str.downcase.split("")
    result = []
    str.each do |item|
    	if item =~ /[a-z]/
    		result << arr.index(item) + 1
    		
    	else
    		result << item
    	end
    end
    result.join
end
   
# keep this function call here    
number_encoding("hEllo 45")  

=begin
Sample Test Cases
Input:"hello 45"
Output:85121215 45

Input:"jaj-a"
Output:10110-1
=end