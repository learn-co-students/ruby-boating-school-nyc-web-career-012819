class BoatingTest

  attr_reader :name
  attr_accessor :student, :status, :instructor

  @@all = []

  def initialize(student, name, status, instructor)
    @student = student
    @name = name
    @status = status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_test(test_name)
    @@all.find{|test| test.name == test_name}
  end

end
