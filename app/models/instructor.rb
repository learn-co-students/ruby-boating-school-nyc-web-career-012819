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


  ##### boating_tests ######
  # this will get called on a instance of the instroctor and will return an array of all that instuctors tests given

  def boating_tests
    BoatingTest.all.select do |test|
       test.instructor == self
    end
  end

  ##### test_search #####
  # this will get called on an instance of the instuctor class and will find a particular test taken by a student
  def test_search(student, boating_test_name)
    self.boating_tests.select do |tests|
      tests.student == student && tests.boating_test_name == boating_test_name
    end
  end

  ##### pass_student #####
  # this will get called on a instance of the insructor class and will change a students boating_test_status from "fail" to "pass"

  def pass_student(student, boating_test_name)
    self.test_search(student, boating_test_name).map do|test|
      test.boating_test_status = "pass"
    end
  end

##### fail_student #####
# this will get called on an instance of the instructor class and will change the the students boating_test_status from pass to fail. If a test does not exist  yet than a new one will be created and set to fail. 

  def fail_student(student, boating_test_name)
    if self.test_search(student, boating_test_name) == []
      BoatingTest.new(student, boating_test_name, "fail", self)
    else
      self.test_search(student, boating_test_name).map do |test|
        test.boating_test_status = "fail"
      end
  end
end
# end

end
