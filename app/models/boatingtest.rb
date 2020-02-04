class BoatingTest
    attr_accessor :instructor, :student, :testname, :teststatus
    @@all = []
    def initialize(student, testname, teststatus, instructor)
        @student = student
        @testname = testname
        @teststatus = teststatus
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

end
