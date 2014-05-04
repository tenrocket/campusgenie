class Student < ActiveRecord::Base
	has_secure_password

  validates_presence_of :email
  validates_uniqueness_of :email

  has_many :student_scholarships
  has_many :scholarships, through: :student_scholarships
  has_many :questions
end
