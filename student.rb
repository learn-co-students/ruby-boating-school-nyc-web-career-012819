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

  def add_boating_test(boating_test_name, boating_test_status, instructor)
    BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
  end

  def self.find_student(first_name)
    @@all.find do |student|
      student.first_name == first_name
    end
  end

  def grade_percentage
    no_of_test = 0
    BoatingTest.all.each do |boating_test|
      no_of_test += 1 if boating_test.student == self
    end
    no_of_test_passed = 0
    BoatingTest.all.each do |boating_test|
      no_of_test_passed += 1 if boating_test.student == self and boating_test.boating_test_status == "passed"
    end
    # binding.pry
    no_of_test_passed.to_f / no_of_test
  end
end
