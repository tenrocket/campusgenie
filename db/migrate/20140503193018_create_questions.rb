class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text
      t.integer :student_id
      t.integer :application_id
      t.boolean :answered
    end
  end
end


