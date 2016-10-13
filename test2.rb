require 'http'


while true
 request = HTTP.get("http://localhost:4567/time") 

 body = request.body

 puts body.to_s
 sleep 5
 system 'clear' # If you use Windows, change this to 'cls'
end
