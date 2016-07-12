# Euclid's formula yields Pythagorean triples for integers m and n with m < n: 
# a = m**2 - n**2 ; b = 2*m*n ; c = m**2 + n**2

x = 1000
# no need put parens around method args.
def euclids upto 
  result = []
  (2..upto).each do |m| # Start at 2 as 1 results nothing anyway
    (1...m).each do |n| # Euclid's formula only works for m > n
      result << [m**2 - n**2, 2*m*n, m**2 + n**2]
    end
  end
  result
end

# Calling Euclids on n/2 suffices as m + n < x
euclids(x/2).each do |triple|
  a, b, c = triple[0], triple[1], triple[2]
  if a + b + c == x
    puts a*b*c
    break
  end
end