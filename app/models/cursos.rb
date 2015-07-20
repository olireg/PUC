class Cursos < ActiveRecord::Base
	has_many :jobs
	has_many :category
	belongs_to :polos
	has_many :user
	
end
