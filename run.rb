require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager1 = Manager.new("george", 26, "technology")
manager2 = Manager.new("peter", 30, "science")

employee1 = Employee.new("juan", manager1, 25000)
employee2 = Employee.new("fran", manager1, 30000)
employee3 = Employee.new("pepe", manager2, 35000)
employee4 = Employee.new("paco", manager2, 40000)
employee5 = Employee.new("john", manager2, 45000)
employee6 = Employee.new("luis", manager1, 44000)
employee7 = Employee.new("leo", manager2, 46000)


binding.pry
puts "done"
