#Using the Ruby language, have the function SwapCase(str) take the str parameter 
#and swap the case of each character. For example: if str is "Hello World" the 
#output should be hELLO wORLD. Let numbers and symbols stay the way they are. 

def SwapCase(str)
  new_s = ""
  str.each_char do |s|
  	if s == s.capitalize
  		new_s += s.downcase
  	elsif s == s.downcase
  	    new_s += s.upcase
  	end
  end
  new_s
         
end
   
# keep this function call here    
puts SwapCase('HellO')  

#Input = "Hello-LOL" Output = "hELLO-lol"
#Input = "Sup DUDE!!?" Output = "sUP dude!!?"