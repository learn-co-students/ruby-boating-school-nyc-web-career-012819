class Student
  attr_reader :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(testName, status, instructor)
    BoatingTest.new(self, testName, status, instructor)
  end

  def self.find_student(first_name)
    self.all.select { |test| test.first_name == first_name }
    #BoatingTest.all.select ...
    #will not work because it outputs the entire instance,
    #not just student instance.
  end

  def grade_percentage
    passed = 0
    not_passed = 0

    BoatingTest.all.map do |test|
      if test.status == "passed"
        passed += 1
      else
        not_passed += 1
      end
    end
    percentage = passed.to_f / not_passed.to_f
    percentage
  end

end
