class BoatingTest


attr_accessor :student, :instructor, :boating_test_name, :boating_test_status
@@all = []

  def initialize(student, boating_test_name, boating_test_status, instructor)

  @student = student
  @instructor = instructor
  @boating_test_name = boating_test_name
  @boating_test_status = boating_test_status
  @@all << self
end

  ####### Class Methods #######

  def self.all
    @@all
  end


  ##### instance methods #####

  
end
