class Manager
    @@all = []

    def self.all
        @@all
    end

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    attr_reader :name
    attr_accessor :age, :department

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, self, salary)
    end

    def self.all_departments
        @@all.map {|manager| manager.department}
    end

    def self.average_age
        total_years = 0
        @@all.each do |manager|
            total_years += manager.age
        end
        total_years / @@all.count
    end
end
