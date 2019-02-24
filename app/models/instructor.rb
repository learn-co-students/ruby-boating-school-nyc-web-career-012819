class Instructor
  attr_reader :student, :test_status
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(test_student, test_name)
    if Student.find_student(test_student) == test_student
      BoatingTest.test_status = "passed"
    else
      new_student  = Student.new(test_student)
     new_student.add_boating_test(test_name, test_status = "passed", self)
    end
  end

  def fail_student(test_student, test_name)
    if Student.find_student(test_student) == test_student
      BoatingTest.test_status = "failed"
    else
      new_student  = Student.new(test_student)
     new_student.add_boating_test(test_name, test_status = "failed", self)
    end
  end

end #class ending
