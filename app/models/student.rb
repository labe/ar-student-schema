require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base

	# has_many :teachers, :foreign_key => :teacher_id

	validates :email, :format => { :with => /\S+@\S+\.\w{2,}/ }, :uniqueness => true
	validates :age, :numericality => { :greater_than_or_equal_to => 5 }
	validates :phone, :format => { :with => /.*\d{3}.*\d{3}.*\d{4}.*/ }
	
	def name
		first_name + " " + last_name
	end

	def age
		(DateTime.now - birthday) / 365
	end

end