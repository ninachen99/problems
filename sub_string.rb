# the method should return all substrings of a given string. 
# solution 1
def substrings(str)
	result = []
	chars = str.split("")
	len = chars.size
	(0..len-1).each do |i|
		(i..len-1).each do |j|
			p result << (chars[i..j].join)
		end
	end
	result.uniq
end
substrings("cat")

# solution 2
def split_word s
  indices = (0...s.length).to_a
  indices.product(indices).reject{|i,j| i > j}.map{|i,j| s[i..j]}.uniq
end

# solution 3
def split_word s
  (0..s.length).inject([]){|ai,i|
    (1..s.length - i).inject(ai){|aj,j|
      aj << s[i,j]
    }
  }.uniq
end

