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
        new_employee = Employee.new(employee_name, salary)  #don't understand why this doesn't work. 
        new_employee.manager_name = self
        self.employees << new_employee
    end

    def self.all_departments  #DONE
        #return an array of all the department names every manager oversees
        self.all.map {|manager| manager.department }
    end

    def self.average_age  #DONE
        #return float of average age of all the managers
       # self.all.reduce(0) {|manager, num| manager.age + num}

        all_ages = @@all.map {|manager| manager.age }
        all_ages.reduce(0) {|age, base| age + base} / all_ages.length
        #expect this to be 50
    end



end
