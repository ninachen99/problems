=begin
Using the Ruby language, have the function TripleDouble(num1,num2) 
take both parameters being passed, and return 1 if there is a straight triple
 of a number at any place in num1 and also a straight double of the same number in num2.
  For example: if num1 equals 451999277 and num2 equals 41177722899, 
  then return 1 because in the first parameter you have the straight triple 999 
  and you have a straight double, 99, of the same number in the second parameter. 
  If this isn't the case, return 0. 
=end
#1. When the input was 556668 and 556886 your output was incorrect.??????????????????

def TripleDouble(num1,num2)
# build two hash, 
# compare two hash, find same key with triple and double.
    first = num1.to_s.scan(/\d/)
                     .inject(Hash.new(0)) { | h, c| h[c] += 1; h }

    second = num2.to_s.scan(/\d/)
                       .inject(Hash.new(0)) { | h, c| h[c] += 1; h }

# return another two hashes with triples and doubles
# find out if they are based on the same numbers,
# by comparing keys in two hashes. 
    triples = first.select { |k, v| v >= 3 }
    doubles = second.select { |k, v| v >= 2 } 

    # return a new hash contains all duplicates keys of triples and doubles
    # if it is more than 1, return 1. 
    if triples.select { |k,_| doubles.include? k }.length >= 1
    	1
    else
    	0
    end
 # if triples.size == doubles.size
    # breaks from iteration and returns 'false' as soon as there is a mismatched key
    # otherwise returns true
    # not sure i understand this line, what '!!' does here???????????????
    #if triples.keys.all?{ |key| !!doubles[key] }
    #else  
    #end
end


# solution 2: passed all test. 
def TripleDouble(num1,num2)
   a1 = num1.to_s.split("")
   a2 = num2.to_s.split("")
   # the numbers should appear consecutively. detect works for this problem. 
   # but what if there are multiple numbers fit in the requirements??????????????
   if a1.detect { |e| a1.count(e) >= 3 }.to_i != a2.detect { |e| a2.count(e) >= 2 }.to_i
      return 0
   else
   
       first = num1.to_s.scan(/\d/)
                     .inject(Hash.new(0)) { | h, c| h[c] += 1; h }

       second = num2.to_s.scan(/\d/)
                       .inject(Hash.new(0)) { | h, c| h[c] += 1; h }
       triples = first.select { |k, v| v >= 3 }
       doubles = second.select { |k, v| v >= 2 } 

       triples.select { |k, | doubles.include? k }.length 

        if triples.select { |k,_| doubles.include? k }.length >= 1
            1
        else
            0
        end
    end
end

# keep this function call here    
TripleDouble(67844, 66237)  

=begin
Input:465555 & num2 = 5579
Output:1

Input:67844 & num2 = 66237
Output:0
=end