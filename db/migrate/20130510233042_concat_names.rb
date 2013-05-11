require_relative '../config'

class ConcatNames < ActiveRecord::Migration
	def up
		add_column :students, :full_name, :string
	end

	def down

	end
end
