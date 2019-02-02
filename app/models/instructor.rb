class Instructor

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def pass_student(student, test)
    BoatingTest.all.select do |boating_test|
      if (boating_test.first_name == student) && (boating_test.test == test)
        boating_test.status == "passed"
        return boating_test
      else
        BoatingTest.new(student, test, "passed", self)
    end
  end

  def fail_student(student, test)
    BoatingTest.all.select do |boating_test|
      if (boating_test.first_name == student) && (boating_test.test == test)
        boating_test.status == "failed"
        return boating_test
      else
      BoatingTest.new(student, test, "failed", self)
    end
  end


end
