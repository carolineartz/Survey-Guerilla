class SurveyResponses < ActiveRecord::Migration
  def change
    create_table :survey_responses do |t|
      t.integer :participations_id
      t.integer :choices_id

      t.timestamps
    end
  end
end
