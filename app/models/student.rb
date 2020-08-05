class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(name)
    self.all.find {|student| student == name}
  end

  def grade_percentage
    passing = 0
    total = 0
    BoatingTest.all.each do |test|
      if test.test_status == "passed" &&  test.student == self
        passing += 1
        total += 1
      elsif test.student == self
        total += 1
      end
    end
    ((passing.to_f / total.to_f) * 100).to_s.slice(0..4).to_f
  end

end
