class SurveyResponse < ActiveRecord::Base
  belongs_to :survey
  belongs_to :participation
  belongs_to :question
  belongs_to :choice
end
