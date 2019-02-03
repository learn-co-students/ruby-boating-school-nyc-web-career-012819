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



  ##### Instance Methods #####

  def add_boating_test(boating_test_name, boating_test_status, instructor)
    BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
  end


  def boating_tests
    BoatingTest.all.select do |test|
       test.student == self
    end
  end

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
