class Manager

    attr_reader :name, :age #let's just pretend they don't age for this purpose
    attr_accessor :department, :employees
    @@all = []

    def initialize(name, age, department)
        @name = name
        @department = department #string
        @age = age #Fixnum (will later require float for avg_age)
        @employees = []
        @@all << self
    end

    def name
        @name
    end

    def department
        @department
    end

    def age
        @age
    end

    def employees
        @employees
    end

    def self.all
        @@all
    end

    ###methods

    def hire_employee(employee_name, salary)
        #adds that employee to the list of employees this manager oversees
        #create employees inside of manager (Employee BELONGS TO Manager)
        Employee.new(employee_name, salary)
        @employees << employee_name
    end

    def self.all_departments
        #return an array of all the department names every manager oversees
    end

    def self.average_age
        #return float of average age of all the managers
    end



end
