=begin
Using the Ruby language, have the function PrimeChecker(num) 
take num and return 1 if any arrangement of num comes out to be a prime number, 
otherwise return 0. For example: if num is 910, 
the output should be 1 because 910 can be arranged into 109 or 019, 
both of which are primes. 
=end

require 'prime'

def PrimeChecker(num)
  pool = num.to_s.split("").permutation.to_a
  test = pool.map { |e| e.join.to_i.prime? }
  if test.include? true
  	1
  else 
  	0
  end
         
end
   
# keep this function call here    
PrimeChecker(598)  
=begin
Sample Test Cases
Input:98
Output:1

Input:598
Output:1
=end