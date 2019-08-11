class Employee
    attr_reader :name, :salary #no raises for this exercise
    attr_accessor :manager_name
    @@all = []

    def initialize(name, salary, manager_name)
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

    def self.paid_over(salary) #DONE
        #return array of all employees whose salaries are OVER that amount.
        #select
        self.all.select {|employee| employee.salary > salary}
    end

    def self.find_by_department(department_name) #DONE
        #returns FIRST employee whose manager is working in that department
        #find
        self.all.find {|employee| employee.manager_name.department == department_name}

    end

    def tax_bracket  #DONE
        #return array of all the employees whose salaries are +/- 1000 of employee who invoked the method
        ## salaries are 1000 more than the employee
        ## or 1000 less than the employee
        #select rather than filter (semantically makes more sense, does the same)

        @@all.select {|employee| employee.salary <= self.salary + 1000 && employee.salary >= self.salary - 1000 && employee.name != self.name}

        #if jim, should return dwight, pam (LESS) creed (MORE)
        #if pam, should return dwight, jim

        #if erin, should return angela (MORE), creed (LESS)
        
    end



end
