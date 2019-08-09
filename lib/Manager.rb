class Manager
    attr_reader :name, :age
    attr_accessor :department

    @@all = []

    def initialize(name:, age:, department:)
        @name = name
        @age = age
        @department = department

        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select{|employee| employee.manager == self }
    end

    def hire_employee(name:, salary:)
        Employee.new(name: name, salary: salary, manager: self)
    end

    def self.all_departments
        self.all.map{|manager| manager.department }.uniq
    end

    def self.average_age
        manager_ages = self.all.map{|manager| manager.age }
        total_age = manager_ages.reduce(:+)
        total_age.to_f / self.all.count
    end

end
