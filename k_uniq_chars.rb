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
    result = []
    # define the starting point each time the code runs

    (0..arr.length - 1).each do |start|
    # loop through the array
      (start..arr.length - 1).each do |idx|

        sub_str = arr.slice(start..idx)
        # if put sub array with k uniq length in the result.
        if sub_str.uniq.length == k
           result << sub_str
        end
      end
    end
    
    # find the longest substring in the array.Then return the 
     result.max_by(&:length).join
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