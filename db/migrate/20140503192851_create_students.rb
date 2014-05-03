class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :name
    	t.string :email
    	t.string :description
    	t.string :password
    	t.integer :application_id
    end
  end
end
