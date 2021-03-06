# before do
#   if session[:user_id] && params[:user_id] != session[:user_id]
#     @errors = "DISHONESTY WILL NOT BE TOLERATED HERE SOLDIER!!"
#     erb :index
#   end
# end

get '/' do
  erb :index
end

post '/surveys/new' do
	new_survey = Survey.create(title: params[:title])
	# p "+++++++++ #{new_survey.title} "
	new_question = Question.create(question_text: params[:question_text], survey_id: new_survey.id)
	# p "+++++++++ #{new_question.question_text} "
	# p params[:question_text1]
	new_choices = Choice.create(choice_text: params[:choice_text], question_id: new_question.id)
	# p "+++++++++ #{new_choices.choice_text} "
	p "+++++++++ #{params} "
	params.each { |param| p param }

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
