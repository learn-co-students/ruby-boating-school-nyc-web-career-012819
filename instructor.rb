class Instructor

  attr_accessor :name

  @@all =[]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def boating_test_info(student, boating_test_name)
    BoatingTest.all.index(BoatingTest.all.find do |information|
      information.student == student && boating_test_name == information.boating_test_name
    end)
  end

  def pass_student(student, boating_test_name)
    check = boating_test_info(student, boating_test_name)
    if  check != nil
      BoatingTest.all[check].boating_test_status = "passed"
      BoatingTest.all[check]
    else
      BoatingTest.new(student, boating_test_name, boating_test_status = "passed", self)
    end
  end

  def fail_student(student, boating_test_name)
    check = boating_test_info(student, boating_test_name)
    if  check != nil
      BoatingTest.all[check].boating_test_status = "failed"
      BoatingTest.all[check]
    else
      BoatingTest.new(student, boating_test_name, boating_test_status = "failed", self)
    end
  end

end
