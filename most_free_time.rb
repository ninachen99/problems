=begin
Using the Ruby language, have the function MostFreeTime(strArr) 
read the strArr parameter being passed which will represent a full day 
and will be filled with events that span from time X to time Y in the day. 
The format of each event will be hh:mmAM/PM-hh:mmAM/PM. For example, 
strArr may be ["10:00AM-12:30PM","02:00PM-02:45PM","09:10AM-09:50AM"]. 
Your program will have to output the longest amount of free time available 
between the start of your first event and the end of your last event in the format: 
hh:mm. The start event should be the earliest event in the day and the latest event s
hould be the latest event in the day. The output for the previous input would therefore 
be 01:30 (with the earliest event in the day starting at 09:10AM and the latest event ending at 02:45PM). 
The input will contain at least 3 events and the events may be out of order. 
=end

# my solution seems passed all given tests, accoridng to the return values. 
# but doesn't show in the system. 
# need code review and refactoring???????????????????????
require 'date'
def most_free_time(strArr)
  time_pool = []
  minutes = []
  strArr.each do |str|
  	str = str.split("-")
  	start_time = DateTime.parse(str.first)
    end_time = DateTime.parse(str.last)
  	time_pool.push(start_time)
    time_pool.push(end_time)
  end 
  # each element in start_pool is Fixnum
  # not sure how to sort the time_pool, seems sort! doesn't work
  # we don't need to first and last elements in the array. looks like. 
  # loop through time_pool, get the diff times.
  # put diff times in an array, then find the largest one. 
   
   #hours = (time_pool[2].hour - time_pool[1].hour)*60
   #mins = (time_pool[2].min - time_pool[1].min)
   #((hours + mins)/60).to_s + ":" + ((hours + mins) % 60).to_s
  
  # delete the first and last items in the array. 

  time_pool.sort!.pop
  time_pool.shift
  
  # convert time to minutes
  time_pool.each do |e|
  	minutes.push(e.hour*60 + e.min)
  end

  # seperate minutes array into pairs, and calculate the diffs.
  puts combo = minutes.each_slice(2).to_a.map { |a, b| b - a }
  
  results = combo.max
  
  if results/60 < 10 && results%60 < 10
    return "0" + (results/60).to_s + ":" + "0" + (results% 60).to_s
  else
  	return (results/60).to_s + ":" + (results% 60).to_s
  end

end

# 01:30  
# keep this function call here    
most_free_time(["10:00AM-12:30PM","02:00PM-02:45PM","09:10AM-09:50AM"])  

=begin
Sample Test Cases
Input:"12:15PM-02:00PM","09:00AM-10:00AM","10:30AM-12:00PM"
Output:"00:30"

Input:"12:15PM-02:00PM","09:00AM-12:11PM","02:02PM-04:00PM"
Output:"00:04"
=end