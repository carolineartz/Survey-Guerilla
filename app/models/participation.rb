class Participation < ActiveRecord::Base
  belongs_to :user
  belongs_to :survey
  has_many :survey_responses
  has_many :questions, through: :survey_responses
end
