class Student


attr_accessor :first_name

@@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  ###### Class Methods #####

  def self.all
    @@all
  end

  def self.find_student(first_name)
    self.all.find do |student|
      student.first_name == first_name
    end
  end



  ##### Instance Methods #####



  ##### add boating_test will create a new test when called on an instance of a student. the student will then be assigned to that test with the default Boating_test initializations.

  def add_boating_test(boating_test_name, boating_test_status, instructor)
    BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
  end

  ##### boating_tests #####
  # this will return all the tests that a student has taken

  def boating_tests
    BoatingTest.all.select do |test|
       test.student == self
    end
  end

  ##### grade_percentage #####
  # this will get called on an instance of the student class and return the overall percentage of tested that have passed.

  def grade_percentage
    passed_tests = 0
    self.boating_tests.each do |test|
      if test.boating_test_status == "pass"
        passed_tests += 100
      end
    end
    percentage = passed_tests / self.boating_tests.length
  end

end
