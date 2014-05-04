class CreateStudentScholarships < ActiveRecord::Migration
  def change
    create_table :student_scholarships do |t|
    	t.integer :student_id
    	t.integer :scholarship_id
    end
  end
end
