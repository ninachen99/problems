=begin
Using the Ruby language, have the function CoinDeterminer(num) take the input, 
which will be an integer ranging from 1 to 250, and return an integer 
output that will specify the least number of coins, that when added, 
equal the input integer. Coins are based on a system as follows: 
there are coins representing the integers 1, 5, 7, 9, and 11. 
So for example: if num is 16, then the output should be 2 
because you can achieve the number 16 with the coins 9 and 7. 
If num is 25, then the output should be 3 because you can achieve 25 with 
either 11, 9, and 5 coins or with 9, 9, and 7 coins. 
=end

# solution 1: this is not a good solution. 
def coin_determiner(num)
   #  coins are: 1, 5, 7, 9, 11
   p num.divmod(11)
   return num if num.between?(1, 4)
   # find the quotient and modulus of num divided by largest coin.
   n, rem = num.divmod(11)
   # if reminder is odd, quotient plus one, else plus two. 
   # What's the math behind this?????????????????????????
   return n + 1 if rem.odd? 
   return n + 2 if rem.even?
end

#solution 2: has to change all method names in snake_case. 
def determine_minimal_coins(num)
  count = 0
  coins = [11, 9, 7, 5, 3, 1]
  change = num
  coins.each do |coin|
    while change >= coin
      count += 1
      # why in this line, the change always minus 11? but not other coins?????????????
      change -= coin
    end
  end
  count
end  
puts determine_minimal_coins(1) == 1
puts determine_minimal_coins(11) == 1
puts determine_minimal_coins(22) == 2
puts determine_minimal_coins(12) == 2
puts determine_minimal_coins(21) == 3
# 1, 11, 22, 12, 21
# 1, 11, 22, 12, 21
# by writing tests and build up from simple answers to harder ones: in this case, 
# test 1, 11, 22, 12, and 21.
# the smallest single coin, the largest single coin, then a multiple, then a multiple with a little left over, 
# then a multiple with a lot left over.

=begin
Sample Test Cases
Input:6
Output:2

Input:16
Output:2
=end