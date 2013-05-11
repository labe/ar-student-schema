require_relative 'db/config'
require_relative 'app/models/teacher'
require_relative 'app/models/student'
require 'date'

# Teacher.create!(:name => "Jimmy Dean", :email => "jimmy_dean@email.com", :address => "419 Cucumber Lane, Farmtown IL 90024", :phone => "858-555-2342")
# Teacher.create!(:name => "Cal Hobson", :email => "cal_hobson@email.com", :address => "143 Tomato Lane, Farmtown IL 90024", :phone => "858-555-2298")
# Teacher.create!(:name => "Charles Brown", :email => "chuck_brown@email.com", :address => "918 Tomato Lane, Farmtown IL 90024", :phone => "858-555-3412")
# Teacher.create!(:name => "Pablo Picasso", :email => "pablo_picasso@email.com", :address => "726 Avocado Lane, Farmtown IL 90024", :phone => "858-555-0984")
# Teacher.create!(:name => "Manolo Polo", :email => "monolo_polo@email.com", :address => "522 Avocado Lane, Farmtown IL 90024", :phone => "858-555-2008")
# Teacher.create!(:name => "Katharine Perry", :email => "k_perry@email.com", :address => "109 Lettuc Lane, Farmtown IL 90024", :phone => "858-555-7888")
# Teacher.create!(:name => "Georges Dupont", :email => "georges_dupont@email.com", :address => "668 Cabbage Lane, Farmtown IL 90024", :phone => "858-555-7641")

Student.all.each do |student|
	student[:full_name] = student[:first_name] + " " + student[:last_name]
	puts student[:full_name]
	student.save
end