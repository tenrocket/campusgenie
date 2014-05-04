class Scholarship < ActiveRecord::Base

  has_many :student_scholarships
  has_many :students, :through => :student_scholarships
  has_many :questions

end