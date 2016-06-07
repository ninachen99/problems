=begin
=Using the Ruby language, have the function KUniqueCharacters(str) take the str parameter being passed and find the longest substring that contains k unique characters, where k will be the first character from the string. The substring will start from the second position in the string because the first character will be the integer k. For example: if str is "2aabbacbaa" there are several substrings that all contain 2 unique characters, namely: ["aabba", "ac", "cb", "ba"], but your program should return "aabba" because it is the longest substring. If there are multiple longest substrings, then return the first substring encountered with the longest length. k will range from 1 to 6. 
=end

# find the longest substr that contains k unique chars.
def KUniqueCharacters(str)
	# find the k.
	# evaluation each substr uniqness.
	# return the longest.
	k = str[0].to_i
    arr = str.split("")
    arr.shift
    pool = []
    for i in (0..arr.length - 1)
      subarr = arr.slice(0..i)
      if subarr.uniq.length == k
        pool << subarr
      end
      i += 1
    end
    pool.each do |e|
    	p e.join
    end
end
   
# keep this function call here    
KUniqueCharacters("3aabacbebebe")  
=begin
Sample Test Cases
Input:"3aabacbebebe"
Output:"cbebebe"

Input:"2aabbcbbbadef"
Output:"bbcbbb"
=end