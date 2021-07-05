class Student

  attr_reader :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name

    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    self.all.select { |student| student.first_name == first_name }
  end

  def tests_taken
    total = BoatingTest.all.select {|test| test.student == self}
    total.length
  end

  def tests_passed
    passing = BoatingTest.all.select {|test| test.student == self && test.test_status == "passed"}
    passing.length
  end

  def grade_percentage
    (tests_passed.to_f) / (tests_taken.to_f) * 100
  end



end
