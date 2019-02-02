class Student

  attr_reader :first_name

  attr_accessor :total_tests, :passed_tests

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @total_tests = 0
    @passed_tests = 0
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test, status, instructor)
    BoatingTest.new(self, test, status, instructor)
  end

  def self.find_student(first_name)
    @@all.find do |student|
      student.first_name == first_name
    end
  end

  def grade_percentage
    BoatingTest.all.each do |test|
      if test.first_name == self
        @total_tests += 1
      end
      if test.first_name == self && test.status == "passed"
        @passed_tests += 1
      end
    end
    @percent_passed = (@passed_tests.to_f / @total_tests.to_f)*100
  end

end
