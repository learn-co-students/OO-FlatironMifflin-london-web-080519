require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new(name: 'John', age: 32, department: "Tech")
m2 = Manager.new(age: 40, name: 'Sally', department: "Finance")
m3 = Manager.new(name: 'Kat', department: "Operations", age: 23)

e1 = m1.hire_employee(name: "Mike", salary: 22000)
e2 = m1.hire_employee(name: "Jack", salary: 37000)
e3 = m2.hire_employee(name: "Nick", salary: 22500)
e4 = m2.hire_employee(name: "Sim", salary: 38000)
e5 = m3.hire_employee(name: "Kim", salary: 29500)
e6 = m3.hire_employee(name: "Harry", salary: 38000)


binding.pry
puts "done"
