module QuestionsHelper
	def timeAgo (time)
	  current = Date.today
	  previous = Date.parse(time).strftime("%d-%m-%Y")
	  previous = previous.to_time.to_i*1000
	  var msPerMinute = 60 * 1000
	  var msPerHour = msPerMinute * 60
	  var msPerDay = msPerHour * 24
	  var msPerMonth = msPerDay * 30
	  var msPerYear = msPerDay * 365

	  var elapsed = current - previous;

	  if elapsed < msPerMinute
	       return "about "+ (elapsed/1000).round + ' seconds ago';   
	  elsif elapsed < msPerHour
	       return "about "+ (elapsed/msPerMinute).round  + ' minutes ago';   
	  elsif elapsed < msPerDay
	       return "about "+ (elapsed/msPerHour ).round  + ' hours ago';   
	  elsif elapsed < msPerMonth 
	      return "about "+ (elapsed/msPerDay).round  + ' days ago';   
	  elsif elapsed < msPerYear
	      return "about "+ (elapsed/msPerMonth).round  + ' months ago';   
	  else
	      return "about "+ (elapsed/msPerYear ).round  + ' years ago'; 
	  end  
	end
end
