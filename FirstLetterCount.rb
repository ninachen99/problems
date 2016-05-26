=begin
Using the Ruby language, have the function LetterCount(str) take the str parameter being passed and return the first word with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. If there are no words with repeating letters return -1. Words will be separated by spaces. 
=end

def LetterCount(str)
	#will split the string into an array based on a regular expression. 
	#\W means any "non-word" character 
	#and the "+" means to combine multiple delimiters.
	str = str.split
	#repeat_letters = str.map { |w| w.chars.max_by { |l| w.count(l) } }
	#repeat_letter_count = str.map { |w| w.count(w.chars.max_by { |l| w.count(l) }) }
	# max_by will return the first max values in a collection!!!!!!!!
	most_repeated = str.max_by { |w| w.count(w.chars.max_by {|l| w.count(l)})}
	
	# if no letters repeated, return -1.
	if most_repeated.split('').length - most_repeated.split('').uniq.size >= 1
		return most_repeated
	else
		return -1
	end        
end
   
# keep this function call here    
LetterCount("o pie")  
=begin
Sample Test Cases
Input:"Hello apple pie"
Output:Hello

Input:"No words"
Output:-1
=end