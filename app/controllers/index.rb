get '/' do
	#These are params if there was an error (otherwise nil)
	@login_error = params[:params_login]
	@register_error = params[:params_registration]
  erb :index
end

