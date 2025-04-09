require "sinatra"
require "sinatra/reloader"

get("/") do
  
  erb(:square_form)
end

get("/square/new") do

  erb(:square_form)
end

get("/square/results") do
  @user_number = params.fetch("number").to_f

  @square_result = @user_number * @user_number

  erb(:square_results)
end

get("/square_root/new") do

  erb(:square_root_form)
end

get("/square_root/results") do
  @user_number = params.fetch("number").to_f

  @square_result = @user_number ** 0.5

  erb(:square_root_results)
end
