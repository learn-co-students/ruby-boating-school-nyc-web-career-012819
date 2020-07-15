class Student

  @@all = []

  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(name)
    @@all.find do |student|
      student.first_name = name
    end
  end

  def self.all
    @@all
  end

  def grade_percentage
    student_tests = BoatingTest.all.find_all { |test| test.student.first_name == self.first_name}
      passed_tests = student_tests.find_all { |test| test.test_status == "passed"}
      final_percentage = (passed_tests.length.to_f) / (student_tests.length.to_f) * 100
  end
end
