

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

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

  def self.find_student(student_first_name)
    self.all.find do |student|
      student.first_name == student_first_name
    end
  end

  def grade_percentage
    student_tests = BoatingTest.all.find_all { |test| test.student.first_name == self.first_name}
    passed_tests = student_tests.find_all { |test| test.status == "passed"}
    final_percentage = (passed_tests.length.to_f) / (student_tests.length.to_f) * 100
  end

end
