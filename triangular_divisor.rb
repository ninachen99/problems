# find the first triangle number that have over 500 factors. 

def triangle_numbers_max_divisors(min_nbr_factors)
  (1..Float::INFINITY).reduce(0) do |tnbr, n|
    tnbr += n
    return tnbr if nbr_factors(tnbr) >= min_nbr_factors
    tnbr
  end
end

def nbr_factors(n)
  m = Math.sqrt(n)
  2 * 1.upto(m).count { |i| (n % i).zero? } - ((n == m * m) ? 1 : 0)
end   

triangle_numbers_max_divisors(500) #=> 76_576_500
