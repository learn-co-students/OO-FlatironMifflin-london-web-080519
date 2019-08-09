class Manager
attr_reader :name, :age
attr_accessor :department, :employees 

@@all = []
@@departments = []
@@ages = []
def initialize(name,age,department)
    @name = name 
    @age = age 
    @department = department
    @employees = []
    @@all << self 
    @@departments << department
    @@ages << age
end

def self.all
    @@all
end 

def hire_employee(employee)
    @employees << employee
    employee.manager = self 
end

def self.all_departments 
    @@departments
end 

def self.average_age 
    (@@ages.sum/@@ages.length).to_i 
end 
end
