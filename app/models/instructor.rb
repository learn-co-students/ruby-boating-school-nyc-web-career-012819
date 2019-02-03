class Instructor

attr_reader :name

@@all = []

def self.all
  @@all
end

def initialize(name)
  @name = name
  @@all << self
end

def pass_student(student, test_name)
  BoatingTest.all.find do |test|
    if test.test_name == test_name.test_name && test.student.first_name == student.first_name
      test.test_status = "passed"
    else
      BoatingTest.new(student, test_name, "passed", self)
    end
  end
end

def fail_student(student, test_name)
  BoatingTest.all.find do |test|
    if test.test_name == test_name.test_name && test.student.first_name == student.first_name
      test.test_status = "failed"
    else
      BoatingTest.new(student, test_name, "failed", self)
    end
  end
end





end
