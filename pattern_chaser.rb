=begin
Using the Ruby language, have the function PatternChaser(str) 
take str which will be a string and return the longest pattern within the string. 
A pattern for this challenge will be defined as: if at least 2 or more adjacent characters within 
the string repeat at least twice. So for example "aabecaa" contains the pattern aa, 
on the other hand "abbbaac" doesn't contain any pattern. Your program should return yes/no pattern/null. 
So if str were "aabejiabkfabed" the output should be yes abe. 
If str were "123224" the output should return no null. 
The string may either contain all characters (a through z only), 
integers, or both. But the parameter will always be a string type. 
The maximum length for the string being passed in will be 20 characters. 
If a string for example is "aa2bbbaacbbb" the pattern is "bbb" and not "aa". 
You must always return the longest pattern possible. 
=end

# my solution: only return the repeating item, but not the pattern when "bbb" likes. 
# only works for the two test below. 
def pattern_chaser(str)
	# convert str to hash with key value pairs. 
	arr = str.split("")
	#hash = Hash[arr.map {|letter| [letter, str.count(letter)]}]
	hash = Hash.new 
	arr.map do |letter|
		hash[letter] = str.count(letter)
	end
	# find the value >= 2 and keys indexs next to each other. 
	items = []
	indexes = []
	hash.each_pair { |k, v| items << k if v >= 2  }
	p items # then find the max appears in the items. 
	items.each do |item|
	 	indexes << hash.keys.index(item)
	end
	
	repeated_hash_values = []
	items.each do |item|
		repeated_hash_values << hash[item]
	end

	# find the highest repeat values in repeating items by traversing the hash. 
	p final_hash = hash.select { |key, value| hash[key] == hash_values.max }
    p result = final_hash.keys.join
    return "no null" if result == ""
    return "yes " + result
	return "yes " + items.join if indexes.inject {|sum, num| sum - num }.abs == 1 
	
	
end
pattern_chaser("dkdkx")
pattern_chaser("sskfssbbb9bbb")

=begin
Input:"da2kr32a2"
Output:"yes a2"

Input:"sskfssbbb9bbb"
Output:"yes bbb"
=end 

# other solution: using array's #each_cons and str's #scan method. 
def pattern_chaser(str)
	# assign the patterns to an empty array.
	patterns = []
	# split str into array items:
	chrs = str.split("")
	# iterate each combination of the str in the range
	# of 2 to str array's length - 1:
	for i in 2..(chrs.size - 1)
		chrs.each_cons(i) {|item| patterns << item.join if str.scan(/#{item.join}/).size > 1 }
	end
    # select the longest pattern
	pattern = patterns.uniq.max_by(&:length)
    # return the required value:
    patterns.empty? ? "no null" : "yes #{pattern}"
end







			