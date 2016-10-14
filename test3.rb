require 'http'

request = HTTP.get("http://localhost:4567/date/parse/13:45 +0430") 
# This request, gives /date/parse a time in Afghanistan (+ 4: 30 GMT) 

body = request.body
puts body.to_s 
#Now, you get current time of server. For example, my local server is located in Iran, so it shall return 10/14/2016, 12:45:00, Zone : IRST. 
