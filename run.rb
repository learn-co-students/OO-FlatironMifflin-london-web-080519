require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager1 = Manager.new("Linda", "HR", 35)
manager2 = Manager.new("Harry", "Accounting", 42)

employee1 = Employee.new("Joe", 21500, manager1)
employee2 = Employee.new("Barbra", 22000, manager1)
employee3 = Employee.new("Jerry", 25000, manager2)

binding.pry
puts "done"
