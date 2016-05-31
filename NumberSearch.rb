#Using the Ruby language, have the function NumberSearch(str) take the str parameter, search for all the numbers in the string, add them together, then return that final number divided by the total amount of letters in the string. For example: if str is "Hello6 9World 2, Nic8e D7ay!" the output should be 2. First if you add up all the numbers, 6 + 9 + 2 + 8 + 7 you get 32. Then there are 17 letters in the string. 32 / 17 = 1.882, and the final answer should be rounded to the nearest whole number, so the answer is 2. Only single digit numbers separated by spaces will be used throughout the whole string (So this won't ever be the case: hello44444 world). Each string will also have at least one letter. 

def NumberSearch(str)
	
    # replace all non-digit with ''
    numbers = str.gsub(/[^\d]/, '').split("")
    # all letters length
    letters = str.scan(/[a-zA-Z]/).length
    #sum up all numbers
    total = numbers.inject(0) { |sum, x| sum + x.to_i }
    # use float.round to round up to the nearest integer.
    result = (total.to_f / letters).round
   
end
   
# keep this function call here    
NumberSearch("Hello6 9World 2, Nic8e D7ay!")  
#a.map {|x| x[/\d+/]}
#result = subject.gsub(/[^\d]/, '')

=begin
Sample Test Cases
Input:"H3ello9-9"
Output:4

Input:"One Number*1*"
Output:0
=end