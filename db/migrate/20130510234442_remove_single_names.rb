require_relative '../config'

class RemoveSingleNames < ActiveRecord::Migration
	def up
		remove_column :students, :first_name
		remove_column :students, :last_name
	end

	def down
		add_column :students, :first_name
		add_column :students, :last_name
	end
end
