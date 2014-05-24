#users (one user has taken 2 surveys.)
User.create(email: "test1@example.com", username: "user1", password: "password")
User.create(email: "demo2@example.com", username: "user2", password: "password")
User.create(email: "derp3@example.com", username: "user3", password: "password")
User.create(email: "lovely@example.com", username: "user4", password: "password")
User.create(email: "sexy@example.com", username: "user5", password: "password")
User.create(email: "ugly@example.com", username: "user6", password: "password")
#surveys
marvel_survey = Survey.create(title: "Marvel Comic Books", user_id: 1)
Survey.create(title: "StarWars Characters", user_id: 2)
Survey.create(title: "Favorite Invertibrates", user_id: 3)
Survey.create(title: "Favorite Pets", user_id: 4)
# #questions
# Question.create(question_text: "State your favorite Marvel hero.", survey_id: 1)
# Question.create(question_text: "Which StarWars character do you relate to most?", survey_id: 2)
# Question.create(question_text: "State your favorite spineless creature", survey_id: 3)
# Question.create(question_text: "Dogs or Cats?", survey_id: 4)
# #the users and the surveys they took
# Participation.create(user_id: 1, survey_id: 1)
# Participation.create(user_id: 2, survey_id: 2)
# Participation.create(user_id: 3, survey_id: 3)
# Participation.create(user_id: 4, survey_id: 4)
# Participation.create(user_id: 1, survey_id: 2)
# #all choices for all questions
# Choice.create(choice_text: "Spiderman", question_id: 1)
# Choice.create(choice_text: "Ironman", question_id: 1)
# Choice.create(choice_text: "Obi-Wan Kenobi", question_id: 2)
# Choice.create(choice_text: "Han Solo", question_id: 2)
# Choice.create(choice_text: "Troglobites", question_id: 3)
# Choice.create(choice_text: "Jelly Fish", question_id: 3)
# Choice.create(choice_text: "dog", question_id: 4)
# Choice.create(choice_text: "cat", question_id: 4)
# #user responses
# SurveyResponse.create(participation_id: 1, choice_id: 2, survey_id: 1)
# SurveyResponse.create(participation_id: 2, choice_id: 4, survey_id: 2)
# SurveyResponse.create(participation_id: 3, choice_id: 6, survey_id: 3)
# SurveyResponse.create(participation_id: 4, choice_id: 7, survey_id: 4)
# SurveyResponse.create(participation_id: 2, choice_id: 3, survey_id: 2)

# #testing the results page
# SurveyResponse.create(participation_id: 1, choice_id: 2, survey_id: 1)
# SurveyResponse.create(participation_id: 2, choice_id: 3, survey_id: 1)
# SurveyResponse.create(participation_id: 3, choice_id: 3, survey_id: 1)
# SurveyResponse.create(participation_id: 4, choice_id: 2, survey_id: 1)
# SurveyResponse.create(participation_id: 5, choice_id: 3, survey_id: 1)
# SurveyResponse.create(participation_id: 1, choice_id: 2, survey_id: 1)
# SurveyResponse.create(participation_id: 2, choice_id: 3, survey_id: 1)
# SurveyResponse.create(participation_id: 3, choice_id: 3, survey_id: 1)
# SurveyResponse.create(participation_id: 4, choice_id: 2, survey_id: 1)
# SurveyResponse.create(participation_id: 5, choice_id: 3, survey_id: 1)






#additional questions

q1 = Question.create(question_text: "Who is your favorite Marvel Villian?", survey_id: 1)
  q1c1 = Choice.create(choice_text: "Mandarin", question_id: q1.id)
  q1c2 = Choice.create(choice_text: "Magneto", question_id: q1.id)

q2 = Question.create(question_text: "Who founded Marvel?", survey_id: 1)
  q2c1 = Choice.create(choice_text: "Stan Lee", question_id: q2.id)
  q2c2 = Choice.create(choice_text: "Bruce Banner", question_id: q2.id)

q3 = Question.create(question_text: "What year was Marvel founded?", survey_id: 1)
  q3c1 = Choice.create(choice_text: "1939", question_id: q3.id)
  q3c2 = Choice.create(choice_text: "1969", question_id: q3.id)

# People answering this survey
prt1_us2 = Participation.create(user_id: 2, survey_id: 1)
  SurveyResponse.create(participation_id: prt1_us2.id, choice_id: q1c1.id, survey_id: marvel_survey.id, question_id: q1.id)
  SurveyResponse.create(participation_id: prt1_us2.id, choice_id: q2c2.id, survey_id: marvel_survey.id, question_id: q2.id)
  SurveyResponse.create(participation_id: prt1_us2.id, choice_id: q3c2.id, survey_id: marvel_survey.id, question_id: q3.id)

prt2_us3 = Participation.create(user_id: 3, survey_id: 1)
  SurveyResponse.create(participation_id: prt2_us3.id, choice_id: q1c2.id, survey_id: marvel_survey.id, question_id: q1.id)
  SurveyResponse.create(participation_id: prt2_us3.id, choice_id: q2c1.id, survey_id: marvel_survey.id, question_id: q2.id)
  SurveyResponse.create(participation_id: prt2_us3.id, choice_id: q3c1.id, survey_id: marvel_survey.id, question_id: q3.id)

prt3_us4 = Participation.create(user_id: 4, survey_id: 1)
  SurveyResponse.create(participation_id: prt3_us4.id, choice_id: q1c1.id, survey_id: marvel_survey.id, question_id: q1.id)
  SurveyResponse.create(participation_id: prt3_us4.id, choice_id: q2c2.id, survey_id: marvel_survey.id, question_id: q2.id)
  SurveyResponse.create(participation_id: prt3_us4.id, choice_id: q3c2.id, survey_id: marvel_survey.id, question_id: q3.id)

# Participation.create(user_id: 5, survey_id: 1)
# Participation.create(user_id: 6, survey_id: 1)



