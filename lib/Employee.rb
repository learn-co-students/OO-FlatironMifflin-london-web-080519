class Employee
    attr_reader :name, :salary #no raises for this exercise
    attr_accessor :manager_name
    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def name
        @name
    end

    def salary
        @salary
    end

    def manager_name
        @manager_name
    end

    def self.all
        @@all
    end

    ###methods

    def self.paid_over(salary) #takes in fixnum
        #return array of all employees whose salaries are OVER that amount.
        #select

    end

    def self.find_by_department(department_name) #takes in string
        #returns FIRST employee whose manager is working in that department
        #find - but returns a boolean

    end

    def tax_bracket
        #return array of all the employees whose salaries are +/- 1000 of employee who invoked the method
        #filter
    end



end
