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

  def self.find_student(first_name)
    @@all.find {|student| student.first_name == first_name}
  end

  def grade_percentage
    tests = BoatingTest.all.find_all {|test| test.student.first_name == @first_name}
    passed = tests.find_all {|test| test.status == "passed"}
    final = (passed.length.to_f) / (tests.length.to_f) * 100
    final.round(2)
  end
end
