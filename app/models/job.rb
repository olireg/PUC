class Job < ActiveRecord::Base
	has_many :comments
	has_attached_file :image, styles: {thumb: "100x100#"}
	validates_attachment_content_type :image,  content_type: /\Aimage\/.*\Z/
	belongs_to :category
	belongs_to :cursos
	belongs_to :user
	belongs_to :polos
	
	
end
