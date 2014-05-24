get '/' do
	#These are params if there was an error (otherwise nil)
	@login_error = params[:params_login]
	@register_error = params[:params_registration]
  erb :index
end

get '/surveys/new' do
	erb :surveys_new
end

post '/surveys/new' do
	new_survey = Survey.create(title: params[:title])
	new_question = Question.create(question_text: params[:question_text], survey_id: new_survey.id)
	new_choices = Choice.create(choice_text: params[:choice_text], question_id: new_question.id)
		if new_survey && new_question && new_choices
			redirect "/users/#{session[:user_id]}"
		else
			"whoops"
		end
	# redirect "surveys/new"
	# These two routes (/surveys/new & /title/new)
	# could be combined upon
	# Create Survey form refactor
end

post '/title/new' do
	survey = Survey.create(title: params[:title], user_id: session[:user_id])
	session[:survey_title] = survey.title
end

post '/question/new' do
	survey_id = Survey.find_by_id(session[:survey_title])
	question = Question.create(question_text: params[:question_text],
														 survey_id: survey_id)
	session[:question_text] = question.question_text
end

post '/choice/new' do
	question_id = Question.find_by_id(session[:question_text])
	choice = Choice.create(choice_text: params[:question_text],
									question_id: question_id)
	session[:choice_text] = choice.choice_text
end
