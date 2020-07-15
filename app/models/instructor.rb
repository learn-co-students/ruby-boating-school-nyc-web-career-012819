class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    passed = BoatingTest.all.find { |test| test.student.first_name == student.first_name && test.name == test_name}
    if passed
      passed.status = "passed"
    else
      BoatingTest.new(student, test_name, "passed", self)
    end
  end

  def fail_student(student, test_name)
    failed = BoatingTest.all.find{ |test| test.student.first_name == student.first_name && test.name == test_name}
    if failed
      failed.status = "failed"
    else
      BoatingTest.new(student, test_name, "failed", self)
    end
  end
end
