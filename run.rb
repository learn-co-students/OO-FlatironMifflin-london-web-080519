require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
dwight = Manager.new("Dwight Schrute",40,"Assistant Regional Manager")
karen = Manager.new("Karen Filippelli", 30, "Sales Manager")
michael = Manager.new("Michael Scott",45,"Regional Manager")
nellie = Manager.new("Nellie Bertram",32,"Special Projects")
ryan = Manager.new("Ryan Howard",38, "Customer Services")

jim = Employee.new("Jim Halpert",35,33000)
pam = Employee.new("Pam Beesly Halpert",32,32000)
andy = Employee.new("Andy Bernard",50,45000)
erin = Employee.new("Erin Hannon",31,31000)
kellie = Employee.new("Kellie Kapoor",35,40000)

binding.pry
puts "done"
