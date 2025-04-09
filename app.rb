require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "

end

get("/square/new") do
  @user_number = params.fetch("number").to_i

end
