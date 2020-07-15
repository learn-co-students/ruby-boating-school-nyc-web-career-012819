class Student

attr_reader :first_name

@@all = []

def self.all
  @@all
end

def initialize(first_name)
  @first_name = first_name
  @@all << self
end

def add_boating_test(test_name, test_status, instructor)
  BoatingTest.new(self, test_name, test_status, instructor)
end

def self.find_student(name)
  Student.all.find do |student|
    student.first_name == name
  end
end

def grade_percentage
  passed = []
  tests = []
  BoatingTest.all.each do |test|
      if test.student.first_name == self.first_name
        tests << test
      end
    end
  BoatingTest.all.each do |test|
    if test.student.first_name == self.first_name && test.test_status == "passed"
        passed << test
      end
    end
gp = passed.length.to_f / tests.length
gp
end





end
