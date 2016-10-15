# RESTful API for Date and Time. 

This API is written in `ruby` programming language and uses `parsi-date` gem to return value of time and date. You can use this API to find date in Persian (Jalali) and Gregorial calendars. 

## How it works?
It's simple, just run `api.rb` like this :

```bash
~$ ruby api.rb -p 4567
```
note that 4567 is default port of sinatra, but you can change it. Now, you can run `test.rb`, `test2.rb` and `test3.rb` to see how the API works.

## How to write a test? 

First, you need a server. For example, your computer is your server and 'localhost' is its host name. Now, you need to install `http` gem, then write something like this :

```ruby
require 'http'

request = HTTP.get("http://localhost:4567/time") 
```
This will get time from server. Now, you can add this lines :

```ruby
body = request.body
body = body.to_s
```
to have the output as a string in your program. 

## Features
### GET /time
Returns current time of the server. Shows result in this format :
```
HH : MM : SS , Zone = TIMEZONE
```
### GET /time/:zone
You need to give it a parameter, for example :
```
GET /time/+0330
``` 
Then it returns difference between given zone and UTC. 
### GET /date
Returns current gregorian day of the server in this format :
```
MM / DD / YYYY
```
P.S : American format is more popular than other formats, and this is why I used it. 
### GET /date/jalali
Returns current Jalali date of the server in this format :
```
DD / MM / YYY
```
This is regular format we use in Iran, Afghanistan, Tajikistan and other regions of the world which people use Jalali calendar. 
### GET /date/parse/:current 
This will convert given date and time to the current date and time of the server. For example :
```
GET /date/parse/10:25 +0430
```
And if server is located in Iran, it'll return:
```
10/14/2016, 9:25:00, Zone: IRST
```
### GET /date/to/jalali/:current
It takes a gregorian date and converts it to Jalali. for examlpe :
```
GET /date/to/jalali/2016-05-29
```
Will return :
```
9/3/1395
```

### GET /date/to/gregorian/:current
It takes a Jalali date and converts it to Gregorian. for example :
```
GET /date/to/gregorian/1395-03-09
```
Will return :

```
05/29/2016
```

