class Polos < ActiveRecord::Base
	has_many :cursos
	has_many :jobs
end
