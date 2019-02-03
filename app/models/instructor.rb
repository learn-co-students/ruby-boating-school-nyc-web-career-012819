class Instructor


  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #####  Class Methods #####

  def self.all
    @@all
  end


  ##### Instance methods #####

  def boating_tests
    BoatingTest.all.select do |test|
       test.instructor == self
    end
  end

  def student_find(student)
    BoatingTest.all.select do |test|
      test.student == student && test.instructor == self
    end
  end

  def pass_student(student, test_name)
    self.boating_tests.select do |test|
      if test.student==student && test.boating_test_name==test_name
      test.boating_test_status = "pass"
    else
      "No matching tests"
      end
    end
  end

def fail_student(student, test_name)
  self.boating_tests.select do |test|
    if test.student==student && test.boating_test_name==test_name
    test.boating_test_status="fail"
  elsif test.boating_test_status=="fail"
      return "Student has already failed"
      end
   end
end
# end

end
