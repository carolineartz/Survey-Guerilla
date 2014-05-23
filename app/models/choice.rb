class Choice < ActiveRecord::Base
  has_many :survey_responses
  belongs_to :question
end
