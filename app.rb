require 'sinatra'
require './lib/semester.rb'
set :public_folder, "public"

get '/' do
  erb :index
end

post '/semesters/' do
  erb :semesters, :locals => { :current => \
  (params['current'].to_s.upcase.gsub(/\s*[0-9]*/,'') + " " + \
  params['current'].to_s.gsub(/\s*[a-zA-Z]*/,'')), :num => \
  (params['num'].to_i < 0 ? 0 : params['num']), :semester => \
  Semester.new.next_semesters(params['current'],params['num']) }
end

get '/about/' do
  erb :about
end

