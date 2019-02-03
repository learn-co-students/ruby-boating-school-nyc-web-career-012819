class Instructor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, testName)
    test = BoatingTest.all.find { |test| test.testName == testName && test.student == student }
    if test
        test.status = "passed"
    else
      BoatingTest.new(student, testName, "passed", self)
    end
  end

  def fail_student(student, testName)
    test = BoatingTest.all.find { |test| test.testName == testName && test.student == student }
    if test
        test.status = "failed"
    else
      BoatingTest.new(student, testName, "failed", self)
    end
  end

end
