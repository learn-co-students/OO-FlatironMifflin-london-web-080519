class Manager

attr_accessor :name, :department, :age 

    @@all = []
    def initialize(name, department, age)
        @name = name 
        @department = department
        @age = age 
        @@all << self 

    end 
    
    def self.all
        @@all 
    end 


    def employees 
        #access employee.all 
        #criteria is manager.  manager = self 
        Employee.all.select {|employee| employee.manager == self }
    end 

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end 

#    class method that
#returns an Array of all the department names that every manager oversees
#search manager.all, iterate through each manager, and retrieve department
    def self.all_departments
        self.all.map {|manager| manager.department}
    end

# returns a Float that is the average age of all the managers
# retrieve the age of each manager through iterating over self.all, and find the average 
# by counting how many there are 
    def self.average_age 
        self.all.map {|manager| manager.age}.sum/self.all.count.to_f
    end 



end
