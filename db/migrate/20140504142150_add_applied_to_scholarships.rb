class AddAppliedToScholarships < ActiveRecord::Migration
  def change
    add_column :scholarships, :applied, :string
  end
end
