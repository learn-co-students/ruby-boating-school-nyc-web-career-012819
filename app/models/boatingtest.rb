class BoatingTest
  attr_reader :student, :testName, :instructor
  attr_accessor :status
  @@all = Array.new

  def initialize(student, testName, status, instructor)
    @student = student
    @testName = testName
    @status = status
    @instructor = instructor
    self.class.all << self
  end

  def self.all
    @@all
  end
end
