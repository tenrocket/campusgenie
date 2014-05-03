class RenameApplicationsToScholarships < ActiveRecord::Migration
  def change
  	rename_table :applications, :scholarships
  end
end
