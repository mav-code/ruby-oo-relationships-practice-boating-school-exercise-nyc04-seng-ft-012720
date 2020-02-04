class Student
    attr_accessor :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(testname, status, instructor)
        BoatingTest.new(self, testname, status, instructor)
    end

    def self.find_student(name)
        self.all.find{|student| student.first_name == name}
    end

    def grade_percentage
        mytests = BoatingTest.all.select{|test| test.student == self}
        passingtests = mytests.select{|test| test.teststatus == "passed"}
        return 100 * passingtests.length.to_f / mytests.length.to_f 

    end

end
