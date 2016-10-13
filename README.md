# RESTful API for Date and Time. 

This API is written in `ruby` programming language and uses `parsi-date` gem to return value of time and date. You can use this API to find date in Persian (Jalali) and Gregorial calendars. 

## How it works?
It's simple, just run `api.rb` like this :

```bash
~$ ruby api.rb -p 4567
```
note that 4567 is default port of sinatra, but you can change it. Now, you can run `test.rb` and `test2.rb` to see how the API works.

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
