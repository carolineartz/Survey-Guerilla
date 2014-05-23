class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :email
      t.string :username, unique: :true
  		t.string :password_hash

  		t.timestamps
  	end
  end
end

#6 tables

# users
# surveys
# user_surveys (join table)

# possible_choices
# questions
# possible_choices_questions (join table)

# A user has many surveys
# A survey has many questions
# A question has many possible_choices

