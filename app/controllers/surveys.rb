get '/surveys/new' do
  "FUCK:"
  erb :surveys_new
end

get '/users/:user_id/surveys' do
  @user = User.find_by_id(session[:user_id])

  erb :user_created_surveys
end

get '/surveys/:survey_id' do
  @survey = Survey.find_by_id(params[:survey_id])
  @participation = @survey.participations

  erb :user_created_surveys
end

post '/surveys' do
  user = User.find_by_id(session[:user_id])
  new_survey = Survey.create(title: params[:title], user_id: user.id)

  new_question = Question.create(question_text: params[:question_text], survey_id: new_survey.id)
  new_choices = Choice.create(choice_text: params[:choice_text], question_id: new_question.id)
  if new_survey && new_question && new_choices
    redirect "/users/#{session[:user_id]}"
  else
    "whoops"
  end
end
