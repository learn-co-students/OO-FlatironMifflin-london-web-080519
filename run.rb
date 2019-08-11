require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

dwight = Employee.new("dwight", 1000)
jim = Employee.new("jim", 1500)
pam = Employee.new("pam", 500)
erin = Employee.new("erin", 3000)
angela = Employee.new("angela", 4000)
creed = Employee.new("creed", 2000)

michael = Manager.new("michael", 50, "sales")
kevin = Manager.new("kevin", 60, "sales")
andy = Manager.new("andy", 40, "marketing")

binding.pry
puts "done"
