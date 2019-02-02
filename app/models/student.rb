class Student

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def self.find_student(student_name)
    @@all.find{|student| student.name == student_name.capitalize}
  end

  def grade_percentage
    test_count = BoatingTest.all.select{|test| test.student == self}.count.to_f
    tests_passed = BoatingTest.all.select{|test| test.student == self && test.status == "passed"}.count
    grade_percentage = (tests_passed/test_count)
  end

end
