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
  @square_root_result = @user_number ** 0.5

  erb(:square_root_results)
end

get("/random/new") do
  erb(:random_form)
end

get("/random/results") do
  @user_min = params.fetch("user_min").to_f
  @user_max = params.fetch("user_max").to_f
  @random_result = rand(@user_min..@user_max)

  erb(:random_results)
end

get("/payment/new") do
  erb(:payment_form)
end

get("/payment/results") do
  @user_apr = params.fetch("user_apr").to_f
  @user_years = params.fetch("user_years").to_f
  @user_pv = params.fetch("user_pv").to_f
  @apr_convert = ((@user_apr/100)/12)
  @years_convert = @user_years * 12
  @payment_result 

  erb(:payment_results)
end
