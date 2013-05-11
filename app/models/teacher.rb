class Teacher < ActiveRecord::Base
	validates :email, :format => { :with => /\S+@\S+\.\w{2,}/ }, :uniqueness => true
	validates :name, :uniqueness => true

	# belongs_to :student
	
end