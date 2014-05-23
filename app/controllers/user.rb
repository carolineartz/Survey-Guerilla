before '/users/*' do
	#DOES THIS EVEN DO ANYTHING?
	if session[:user_id] != (User.find(session[:user_id])).id
		redirect '/' #return to root because you are not supposed to be here
	end
end

get '/sessions/new' do
  erb :login
end

delete '/sessions' do
  session.delete("user_id")
  erb :index
end

get '/users/:id' do
	erb :user_id
end


# --------------------- POST REQUESTS -----------------
post '/sessions' do
  email = params[:email]
  password = params[:password]
  user = User.authenticate(email, password)
  if user
    session[:user_id] = user.id
    redirect "/users/#{session[:user_id]}"
  else
    redirect '/?params_login=There was an error with login.'
  end
end


post '/users' do
  if User.find_by_email(email)
    redirect to '/?params_registration=There was an error with registration'
  else
    @user = User.create(email: params[:email], password: params[:password])

    session[:user_id] = @user.id
    redirect '/user/home'
  end
end

