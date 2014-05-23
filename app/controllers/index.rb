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
	new_survey = Survey.create(title: params[:title])
	new_question = Question.create(question_text: params[:question_text], survey_id: new_survey.id)
	new_choices = Choice.create(choice_text: params[:choice_text], question_id: new_question.id)
		if new_survey && new_question && new_choices
			redirect "/users/#{session[:user_id]}"
		else
			"whoops"
		end
end
