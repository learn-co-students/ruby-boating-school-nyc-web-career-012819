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

def pass_student(studentt, test_namee)
  found = BoatingTest.all.find do |test|
    test.student == studentt && test.test_name == test_namee
  end
  if found
    found.test_status = 'passed'
    found
  else
    new_test = BoatingTest.new(studentt, test_namee, 'passed', self)
    new_test
  end
end

def fail_student(studentt, test_namee)
  found = BoatingTest.all.find do |test|
    test.student == studentt && test.test_name == test_namee
  end
  if found
    found.test_status = 'failed'
    found
  else
    new_test = BoatingTest.new(studentt, test_namee, 'failed', self)
    new_test
  end
end

end
