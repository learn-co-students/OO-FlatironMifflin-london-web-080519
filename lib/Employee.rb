class Employee 
    attr_reader :name,:age,:salary
    attr_accessor :manager
@@all = []
    def initialize(name,age,salary)
        @name = name
        @age = age 
        @salary = salary
        @manager = manager
        @@all << self 
    end

    def manager_name
        @manager.name
    end
    
    def self.all
        @@all
    end 

    def self.paid_over(number)
        all.select {|employee|employee.salary > number }
    end 

    def get_department
        @manager.department
    end 

    def self.find_by_department(department)
        self.all.find {|employee|employee.get_department == department}
    end

    def tax_bracket
        Employee.all.select {|employee|employee.salary - @salary <= 1000 && @salary - employee.salary <= 1000}
    end





end
