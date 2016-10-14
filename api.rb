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
