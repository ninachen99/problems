# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

# This idea is from the given solution, but any other way easier to understand?????????
def nth_prime(n)
  # Create an array of prime numbers.
  prime_i = 0
  number = 2
  while true    # ???? any other way instead of while true??? Not sure i understand the while true here. 
   if is_prime?(number)
     prime_i += 1
     if n == prime_i
      return number
     end
   end
   number += 1
  end
  
end

# the array way doesnt work: !!!!!!!??????????????????????
def nth_prime(n)  # issues here.
  # Create an array of prime numbers.
  primes = []
  number = 2
  while true
    if is_prime?(number)
      primes.push(number)
    end
    number += 1
  end
  # Return the nth prime.
  i = 0
  while i < primes.length
    if n == i
      return primes[i]
    end
    i += 1
  end
end

<<<<<<< HEAD

# Still the array way, but i have to start the 
=======
# Still focus on array, but i have to start the 
>>>>>>> 60fc80392861e2a6bd4af5204282a5980b667d7c
# Array from 2, otherwise the my_primes arr
# Starts from 3, the code passes the test, but 
# it is not the final solution, since
# if i don't set limit for the array, it will 
# be a very large array! 
# Any other ways to solve this puzzle????????
# 
def nth_prime(n)
  my_primes = [2] # have to starts at 2 manually here for now. 
<<<<<<< HEAD
  
  for number in 2..100  # set limit here tempararily. 
   if is_prime?(number)
     my_primes.push(number)
   end
   number += 1
  end
  puts my_primes[1]
  
=======
  
  for number in 2..100  # set limit here tempararily. 
   if is_prime?(number)
     my_primes.push(number)
   end
   number += 1
  end
  puts my_primes[1]
  
>>>>>>> 60fc80392861e2a6bd4af5204282a5980b667d7c
  i = 0
  while i < my_primes.length
    if n === i
      puts my_primes[n]
      return my_primes[n]
    end
    i += 1
  end
end


<<<<<<< HEAD














=======
>>>>>>> 60fc80392861e2a6bd4af5204282a5980b667d7c
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
