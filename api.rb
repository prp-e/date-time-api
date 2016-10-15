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

get '/date/parse/:current' do
 "#{Time.parse(params[:current]).month()} / #{Time.parse(params[:current]).day()} / #{Time.parse(params[:current]).year()} , #{Time.parse(params[:current]).hour} : #{Time.parse(params[:current]).min()} : #{Time.parse(params[:current]).sec()} , Zone : #{Time.parse(params[:current]).zone()}"
end

get '/date/to/jalali/:current' do
 "#{Date.parse(params[:current]).to_jalali.day} / #{Date.parse(params[:current]).to_jalali.month} / #{Date.parse(params[:current]).to_jalali.year} "
end

get '/date/to/gregorian/:current' do
 "#{Parsi::Date.parse(params[:current]).to_gregorian.month} / #{Parsi::Date.parse(params[:current]).to_gregorian.day } / #{Parsi::Date.parse(params[:current]).to_gregorian.year}"
end

get '/zone/:zone' do
 ENV['TZ'] = params[:zone].sub('-', '/')
 "#{Time.now.hour} : #{Time.now.min} : #{Time.now.sec}, Zone : #{Time.now.zone}"
end
