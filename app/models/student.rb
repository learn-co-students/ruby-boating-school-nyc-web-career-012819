class Student
attr_accessor :name
@@all = []
def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def add_boating_test(test_name, test_status, instructor)
new_test = BoatingTest.new(self, test_name, test_status, instructor)
end

def self.find_student(first_name)
self.all.find do |student|
  student.name.split.first == first_name
end
end

def grade_percentage
  found = BoatingTest.all.select do |test|
    test.student == self
  end
 all_passed = found.select do |test|
   test.test_status == 'passed'
 end
perc = ((all_passed.length).to_f/(found.length).to_f)
perc

end

end
