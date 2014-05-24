# before do
#   if session[:user_id] && params[:user_id] != session[:user_id]
#     @errors = "DISHONESTY WILL NOT BE TOLERATED HERE SOLDIER!!"
#     erb :index
#   end
# end

get '/' do
  erb :index
end

get '/users/:user_id' do
  "Hello World"
end
