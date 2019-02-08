class Student < ActiveRecord::Base
  has_many :boating_tests
  has_many :instructors, through: :boating_tests

  # attr_accessor :first_name
  #
  # @@all = []
  #
  # def initialize(first_name)
  #   @first_name = first_name
  #   @@all << self
  # end
  #
  # def self.all
  #   @@all
  # end

  def add_boating_test(name, status, instructor)
    BoatingTest.create(name: name, status: status, instructor: instructor, student: self)
  end


  def self.find_student(name)
    self.find_by(first_name: name)
  end
  # def self.find_student(student_first_name)
  #   self.all.find do |student|
  #     student.first_name == student_first_name
  #   end
  # end
  #
  def grade_percentage
    student_tests = self.boating_tests.count
    passed_tests = self.boating_tests.where('status="passed"').count
    passed_tests / student_tests * 100
  end
  # def grade_percen
  #   student_tests = BoatingTest.all.find_all { |test| test.student.first_name == self.first_name}
  #   passed_tests = student_tests.find_all { |test| test.status == "passed"}
  #   final_percentage = (passed_tests.length.to_f) / (student_tests.length.to_f) * 100
  # end
  #
end
