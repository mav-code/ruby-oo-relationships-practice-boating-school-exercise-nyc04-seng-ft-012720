class Instructor

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, tn)
        if BoatingTest.all.find{|test| test.testname == tn && test.student == student}
            BoatingTest.all.find{|test| test.testname == tn && test.student == student}.teststatus = "passed"
        else BoatingTest.new(student, tn, "passed", self)
        end
        BoatingTest.all.find{|test| test.testname == tn && test.student == student}
    end

    def fail_student(student, tn)
        if BoatingTest.all.find{|test| test.testname == tn && test.student == student}
            BoatingTest.all.find{|test| test.testname == tn && test.student == student}.teststatus = "failed"
        else BoatingTest.new(student, tn, "failed", self)
        end
        BoatingTest.all.find{|test| test.testname == tn && test.student == student}
    end

end
