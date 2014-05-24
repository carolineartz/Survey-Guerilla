#----------- SESSIONS -----------

get '/sessions/new' do

  erb :"users/login"
end

post '/sessions' do
  # Log-in
  @email = params[:email]
  user = User.authenticate(@email, params[:password])
  if user
    # successfully authenticated; set up session and redirect
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    # an error occurred, re-render the sign-in form, displaying an error
    @error = "Invalid email or password."
    erb :"users/log_in"
  end
end

# This is supposed to be a delete request, but the form to send the delete
# request looked ugly, so we used an <a href=""> and sent a GET request...
get '/sessions/:id' do
  # sign-out -- invoked via AJAX
  return 401 unless params[:id].to_i == session[:user_id].to_i
  session.clear
  if request.xhr?
    200
  else
    erb :index
  end
end

#----------- USERS -----------
get '/users/new' do
  # render sign-up page
  @user = User.new
  erb :"users/sign_up"
end

get '/users/:user_id' do
  erb :user_id
end

post '/users' do
  # Sign-up
  @user = User.new params[:user]
  if @user.save
    # successfully created new account; set up the session and redirect
    session[:user_id] = @user.id
    redirect "/users/#{user.id}"
  else
    # an error occurred, re-render the sign-up form, displaying errors
    erb :"users/sign_up"
  end
end

