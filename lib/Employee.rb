class Employee
    @@all = []

    def self.all
        @@all
    end

    def initialize(name, manager, salary)
        @name = name
        @manager = manager
        @salary = salary
        @@all << self
    end

    attr_reader :name
    attr_accessor :manager, :salary

    def self.paid_over(amount)
        @@all.select {|employee| employee.salary > amount}
    end

    def self.find_by_department(department)
        @@all.find {|employee| employee.manager.department == department}
    end

    def tax_bracket
        @@all.select {|employee| (employee.salary - self.salary).abs <= 1000 && employee != self}
    end
end