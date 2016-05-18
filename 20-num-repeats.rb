# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.
 
# any other cleaner way to solve this? this is the solution: 
def num_repeats(string)
	counts = []
	str_idx = 0

	while str_idx < string.length
		letter = string[str_idx]

		counts_idx = 0
		while counts_idx < counts.length
			if counts[counts_idx][0] == letter
				counts[counts_idx][1] += 1
				break # what exactly break does here? t seems like the break is there to prevent unnecessary extra iteration.#once you update the count of a particular letter, there’s no need iterating through the rest of the “counts” array. So you break out of the loop.
			end
			counts_idx += 1
		end

		if counts_idx == counts.length
			counts.push([letter, 1])  # Why push an array, can we do counts.push(letter, 1)????? 
		end

		str_idx += 1
	end

	num_repeats = 0
	counts_idx = 0
	while counts_idx < counts.length
		if counts[counts_idx][1] > 1 # how can we know it is not the same letter. ????????
			num_repeats += 1
		end
		counts_idx += 1
	end
	
	return num_repeats
end

# my code here, not working yet: ?????????????????????
def num_repeats(string)
	repeat_num = 0
	i = 0
	while i < string.length
	  counter = string.count(string[i])
	  j = 0 
	  while j < string.length
	    counter_sec = string.count(string[j])
        j += 1
      end
	  i += 1
	end
	
	if string[i] != string[j]
		repeat_num += 1
	end
	return repeat_num
end

#Another idea: doesnt work yet???????
def num_repeats(string)
	counter = []
	i = 0
	while i < string.length
	  letter = string[i]
	  
	  j = 0
	  while j < string.length
	    if string[j] == string[i]
	    	counter.push([letter, 1])
	    end
	    j += 1
	  end
	    	
	  i += 1
	end
	
	#puts counter[0].join 
	puts counter[0][0]
	puts counter[0][1]
	
	# loop through counter
	repeats = 0
	counter_i = 0
	while counter_i < counter.length
		 counter_j = 2
		 while counter_j < counter.length
		   if counter[counter_i] != counter[counter_j]
		   	repeats += 1
		   end
		   counter_j += 1
		 end
		 counter_i += 1
	end
	return repeats
end

# Brendan's solution:
def num_repeats(string)
	counts = {}
	idx = 0
	number_of_repeats = 0
	
	while idx < string.length
	 if counts.key?(string[idx])
	  	counts[string[idx]] += 1
	  else
	  	counts[string[idx]] = 1
	  end
	  idx += 1
	end
	counts.each do |letter, count|
	 if count > 1
	 	number_of_repeats += 1
	 end
	end
	number_of_repeats
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
