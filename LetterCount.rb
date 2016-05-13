
#Using the Ruby language, have the function LetterCountI(str) take the str
#parameter being passed and return the first word with the greatest number of
#repeated letters. For example: "Today, is the greatest day ever!" should return 
#greatest because it has 2 e's (and 2 t's) and it comes before ever which also has
#2 e's. If there are no words with repeating letters return -1. 
#Words will be separated by spaces. 


#Any way to refactor the code???????????
def LetterCountI(str)
	str = str.split(" ")
	str.map { |w| w.chars.max_by {|e| w.count(e) } }
    str.map { |w| w.count(w.chars.max_by {|e| w.count(e)}) }
	
    winner =  str.max_by { |w| w.count(w.chars.max_by {|e| w.count(e)})  }
	return -1 if ("a".."z").all? {|c| winner.count(c) <= 1}
	
end
   
  
 LetterCountI("today, is the greatest day ever") 
 



#s.split(" ").map { |w| w.chars.max_by { |e| w.count(e) } }
# => ["a", "e", "f"] # getting the max count character from each word
#s.split(" ").map { |w| w.count(w.chars.max_by { |e| w.count(e) }) }
# => [2, 5, 3] # getting the max count character's count from each word
# final code
#s.split(" ").max_by { |w| w.count(w.chars.max_by { |e| w.count(e) }) }
# => "ddeeteefef"