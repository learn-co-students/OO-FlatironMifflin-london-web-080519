class Employee

    attr_reader :name
    attr_accessor :salary, :manager_name

    @@all = []

    # Employee#name returns a String that is the employee's name
    # Employee#salary returns a Fixnum that is the employee's salary
    # Employee#manager_name returns a String that is the name of their manager
    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    # Employee.all returns an Array of all the employees
    def self.all
        @@all
    end

    # Employee.paid_over takes a Fixnum argument and returns an Array of all the employees 
    # whose salaries are over that amount
    def self.paid_over(pay)
        self.all.select {|employee| employee.salary > pay}
    end

    # Employee.find_by_department takes a String argument that is the name of a department and 
    # returns the first employee whose manager is working in that department
    def self.find_by_department(department)
        self.all.find{|employee| employee.manager_name.department == department}
    end
    
    # Employee#tax_bracket returns an Array of all the employees whose salaries are within 
    # $1000 (± 1000) of the employee who invoked the method
    def tax_bracket
        
        current_employee = self.salary

        employees_within_salary = @@all.select do |employee| 
            employee.salary - current_employee <= 1000 && employee.salary - current_employee >= -1000
        end

        employees_within_salary - [self]

    end

end
