class Question < ActiveRecord::Base
	belongs_to :scholarship
	belongs_to :application
	
end
