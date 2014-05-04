class RemoveAppliedFromScholarships < ActiveRecord::Migration
  def change
    remove_column :scholarships, :applied, :boolean
  end
end
