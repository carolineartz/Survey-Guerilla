class SurveyResponse < ActiveRecord::Base
  belongs_to :choice
  belongs_to :participation
end
