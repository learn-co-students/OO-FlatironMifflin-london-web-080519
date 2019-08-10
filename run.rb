require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

eric = Manager.new("Eric", "Finance", 40)
matthew = Manager.new("Matthew", "Sales", 43)
clara = Manager.new("Clara", "Operations", 61)

jacob = Employee.new("Jacob", 3000, eric)
heather = Employee.new("Heather", 1500, eric)
martin = Employee.new("Martin", 1000, eric)
ruben = Employee.new("Ruben", 1000, matthew)
andy = Employee.new("Andy", 800, clara)
mark = Employee.new("Mark", 2500, clara)

binding.pry
puts "done"
