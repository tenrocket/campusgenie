class RemoveStudentIdFromScholarships < ActiveRecord::Migration
  def change
    remove_column :scholarships, :student_id, :integer
  end
end
