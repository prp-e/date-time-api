require 'http'
# This gem is needed for sending requests. of course, there's a net/http option too, but I prefer this one. 

request1 = HTTP.get("http://localhost:4567/date")
# This request reads gregorian date from the API. 

body1 = request1.body
# This line, reads data in <body> of the requested page

puts body1.to_s
# Now, we print everything we read from the API, in a readable format. 

request2 = HTTP.get("http://localhost:4567/date/jalali")
body2 = request2.body 
puts body2.to_s

request3 = HTTP.get("http://localhost:4567/time")
body3 = request3.body
puts body3.to_s
