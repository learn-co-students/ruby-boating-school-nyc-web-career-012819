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
    BoatingTest.all.each do |test|
      if (test.test_name == test_name && test.student == student)
        return test.test_status = "passed"
      end
    end
  end

  def fail_student(student, test_name)
    count = 0
    BoatingTest.all.each do |test|
      if (test.test_name == test_name && test.student == student)
        count += 1
        return test.test_status = "failed"
      end
    end
    if count == 0
      BoatingTest.new(student, test_name, "failed", self)
    end
  end

end
