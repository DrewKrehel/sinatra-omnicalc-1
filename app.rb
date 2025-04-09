require "sinatra"
require "sinatra/reloader"

get("/") do
  
  erb(:square_form)
end

get("/square/new") do

  erb(:square_form)
end

get("/square/results") do
  @user_number = params.fetch("number").to_i

  @square_result = @user_number * @user_number

  erb(:square_result)
end
