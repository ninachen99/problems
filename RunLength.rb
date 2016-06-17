=begin
have the function RunLength(str) take the str parameter
 being passed and return a compressed version of the 
 string using the Run-length encoding algorithm. 
 This algorithm works by taking the occurrence of 
 each repeating character and outputting that number 
 along with a single character of the repeating sequence.
  For example: "wwwggopp" would return 3w2g1o2p. 
  The string will not contain any numbers, punctuation, 
  or symbols. 
=end 

# my solution: 9 point, failed 3 tests.
def RunLength(str)
	 new_str = []
	 str = str.downcase.split('')
	 hash = Hash.new(0)
	 str.each do |k, v|
	 	hash[k] += 1
	 end
	 
	 hash.to_a.each do |a|
	 	new_str.push(a.reverse.join)
	 end
	 new_str.join
end

# one of the given solution: 
def RunLength(str)
  # convert str into array
  chars = str.split('') 
  new_str = ""
  counter = 1
  # loop through the str array
  (0..(chars.length-1)).each do |idx|
  	# find the repeating chars
  	if chars[idx] == chars[idx+1]
  		# increment the counter
  		counter += 1
  		p counter
  	else
  		# if no repeating chars, 
  		# push number and chars to the new_str
  		# if else condition scope????? why push everything in
  		# else condition?????????????????
  		new_str << counter.to_s + chars[idx] # why this line is here????
  		counter = 1
  		p new_str
  	end
  end
  new_str
  end
end  

# should follow the sequence, threw error on 
# the string below????????????  
RunLength("yesssssnomaybe")  

#Input:"aabbcde"
#Output:"2a2b1c1d1e"

#Input:"wwwbbbw"
#Output:"3w3b1w"

# other solution using each_with_index, much better, but couldn't figure out the scope:
def run_length(str)
    letters = str.split("")
    count = 1
    result = ""
    letters.each_with_index do |letter, index|
        nex_letter = letters[index + 1]
        if letter == nex_letter
            count += 1
        else
          # so we push it to the result after the 'if' finish running for each letter here? 
            result << count.to_s << letter
            count = 1
        end
    end
   result
end

run_length("yesssssnomaybe")  
