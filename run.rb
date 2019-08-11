require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here


michael = Manager.new("michael", 50, "sales")
kevin = Manager.new("kevin", 60, "sales")
andy = Manager.new("andy", 40, "marketing")


dwight = Employee.new("dwight", 1000, michael)
jim = Employee.new("jim", 1500, michael)
pam = Employee.new("pam", 500, kevin)
erin = Employee.new("erin", 3000, kevin)
angela = Employee.new("angela", 4000, andy)
creed = Employee.new("creed", 2000, andy)


binding.pry
puts "done"
#Done.
