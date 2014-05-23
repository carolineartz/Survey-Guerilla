get '/' do
	#These are params if there was an error (otherwise nil)
	@login_error = params[:params_login]
	@register_error = params[:params_registration]
  erb :index
end

get '/surveys/new' do
	erb :surveys_new
end

post '/surveys' do

end
