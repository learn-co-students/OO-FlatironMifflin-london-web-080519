class Employee
    attr_accessor :salary, :manager
    attr_reader :name

    @@all = []

    def initialize(name:, salary:, manager:)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        @manager.name
    end

    def get_department
        @manager.department
    end

    def tax_bracket
        Employee.all.select{|employee|
            employee.salary - @salary <= 1000 && employee.salary - @salary >= -1000
        }
    end

    def self.paid_over(number)
        self.all.select{|employee| employee.salary > number }
    end

    def self.find_by_department(department)
        self.all.find{|employee| employee.get_department == department}
    end


end
