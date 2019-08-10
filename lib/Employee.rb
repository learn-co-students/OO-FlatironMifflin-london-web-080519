class Employee

    attr_reader :name, :salary, :manager 

    @@all = []

    def initialize(name, salary, manager)
        @name = name 
        @salary = salary 
        @manager = manager 
        @@all << self 

    end 

    def self.all 
        @@all 
    end 

    #takes a Fixnum argument and 
    #returns an Array of all the employees whose salaries 
    #are over that amount

    def self.paid_over(cap)
        self.all.select { |employee| employee.salary > cap }
    end 
    # takes a String argument that is the name of a department and 
    # returns the first employee whose manager is working in that department
    #find manager of that department, and get their employee
    def self.find_by_department(department) 
        Manager.all.map do |manager| 
            if manager.department == department
            return manager.employees[0]
            end 
        end 
    end 

    def tax_bracket 
        Employee.all.select {|employee| employee.salary.between?((self.salary - 1000),(self.salary + 1000)) && employee != self }
       
    end

end 



