class CreateSurveyResponses < ActiveRecord::Migration
  def change
    create_table :survey_responses do |t|
      t.integer :participation_id
      t.integer :choice_id

      t.timestamps
    end
  end
end
