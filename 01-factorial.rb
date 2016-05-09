# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
#
# As a special case, `factorial(0) == 1`.
#
# Difficulty: easy.

# this one throw errors, and not sure which line cause the error??????
def factorial(n)
  if n < 0
    return nil
  end
    
  result = 1
  i = 1
  while n > 0 
    while i < n   # can we do nested loop here? 
      result *= n
    end
    n = n - i  # this should be inside the loop. often mistakes here.
  end
  return result
end

# another solution that works, refactor to be better???????
def factorial(n)
  if n < 0
    return nil
  end
    
  result = 1
  i = 1
  while n > 0 && i < n
      result *= n
      n = n - i
  end
  return result
end



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'factorial(0) == 1: ' + (factorial(0) == 1).to_s
)
puts(
  'factorial(1) == 1: ' + (factorial(1) == 1).to_s
)
puts(
  'factorial(2) == 2: ' + (factorial(2) == 2).to_s
)
puts(
  'factorial(3) == 6: ' + (factorial(3) == 6).to_s
)
puts(
  'factorial(4) == 24: ' + (factorial(4) == 24).to_s
)
