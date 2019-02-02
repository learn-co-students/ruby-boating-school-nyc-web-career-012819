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

  def fetch_test(student, boating_test)
    BoatingTest.all.select{|test| test.student == student && test.name == boating_test}.first
  end

  def pass_student(student, boating_test)
    if fetch_test(student, boating_test) != nil && fetch_test(student, boating_test).status != "passed"
      fetch_test(student, boating_test).status = "passed"
      fetch_test(student, boating_test)
    else
      BoatingTest.new(student, boating_test, "passed", self)
    end
  end

  def fail_student(student, boating_test)
    if fetch_test(student, boating_test) != nil && fetch_test(student, boating_test).status != "failed"
      fetch_test(student, boating_test).status = "failed"
      fetch_test(student, boating_test)
    else
      BoatingTest.new(student, boating_test, "failed", self)
    end
  end

end
