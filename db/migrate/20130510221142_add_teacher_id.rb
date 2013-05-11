require_relative '../config'

class AddTeacherId < ActiveRecord::Migration
	def self
		add_column :students, :teacher_id, :integer
	end

	def down
	end
end
