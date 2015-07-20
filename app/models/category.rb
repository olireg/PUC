class Category < ActiveRecord::Base
	has_many :comments
	belongs_to :cursos
  	has_many :jobs
  	has_many :user
  	
end
