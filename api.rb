require 'sinatra'
require 'parsi-date'
require 'time'

get '/time' do 
 "#{Time.now().hour()} : #{Time.now().min()} : #{Time.now().sec()} , Zone : #{Time.now().zone()}" 
end

get '/time/:zone' do
 "#{Time.zone_offset(params[:zone], Time.now().year())}"
end

get '/date' do
 "#{Time.now().month()} / #{Time.now().day()} / #{Time.now().year}"
end

get '/date/jalali' do
 "#{Parsi::Date.today().day()} / #{Parsi::Date.today().month()} / #{Parsi::Date.today().year()}"
end
