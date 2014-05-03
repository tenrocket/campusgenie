class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :title
      t.string :description
      t.string :organization
      t.boolean :applied
      t.integer :student_id
      t.string :gift_amount
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
