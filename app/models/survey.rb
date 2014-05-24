class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :participations
  has_many :survey_responses
end
