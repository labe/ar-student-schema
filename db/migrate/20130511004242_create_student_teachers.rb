require_relative '../config'

class CreateStudentTeachers < ActiveRecord::Migration
	def up
		create_table :students_and_teachers do |t|
			t.integer :student_id
			t.integer :teacher_id
			t.timestamps
		end

		remove_column :students, :teacher_id
	end

	def down
		add_column :students, :teacher_id
	end
end