class Scholarship < ActiveRecord::Base

  has_and_belongs_to_many :students
  has_many :questions

end