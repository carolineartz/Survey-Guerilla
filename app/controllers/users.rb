before '/users/*' do
	#DOES THIS EVEN DO ANYTHING?
	if session[:user_id] != (User.find(session[:user_id])).id
		redirect '/' #return to root because you are not supposed to be here
	end
end

#----------- SESSIONS -----------

get '/sessions/new' do
  # render sign-in page
  erb :"users/log_in"
end

post '/sessions' do
  # Log-in
  @email = params[:email]
  user = User.authenticate(@email, params[:password])
  if user
    # successfully authenticated; set up session and redirect
    session[:user_id] = user.id
    redirect '/'
  else
    # an error occurred, re-render the sign-in form, displaying an error
    @error = "Invalid email or password."
    erb :"users/log_in"
  end
end

delete '/sessions/:id' do
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

post '/users' do
  # Sign-up
  @user = User.new params[:user]
  if @user.save
    # successfully created new account; set up the session and redirect
    session[:user_id] = @user.id
    redirect '/'
  else
    # an error occurred, re-render the sign-up form, displaying errors
    erb :"users/sign_up"
  end
end

