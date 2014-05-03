class Student < ActiveRecord::Base
	has_secure_password

  validates_presence_of :email
  validates_uniqueness_of :email

  has_and_belongs_to_many :scholarships
  has_many :questions
end
