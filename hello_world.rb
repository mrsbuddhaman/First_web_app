require 'sinatra'

get '/' do
  "Hello world!"
end

get '/Nemacolin' do
  "minedminds"
end

get '/greeting/:name' do
  "Hello #{params['name']}"
end

get '/numbers/:first/:second' do |a,b|
  "We can add #{a} and #{b} and it equals #{a.to_i + b.to_i}"
end

get '/three/:name/:first/:second' do |a,b,c|
  "Hello #{a}. #{b} * #{c} = #{b.to_i * c.to_i}"
end

get '/details' do
   erb :username
end

post '/details' do
   erb :age, :locals => { :name => params[:name]}
end

post '/age' do
     if params[:age].to_i < 60
	   erb :faves, :locals => { :age => params[:age]}
	 else
	  "Wow! In ten years you will be #{params[:age].to_i + 10}"
	  end
end

post '/faves' do
   "The sum of your favorite numbers is #{params[:num1].to_i + params[:num2].to_i + params[:num3].to_i}"
 end   