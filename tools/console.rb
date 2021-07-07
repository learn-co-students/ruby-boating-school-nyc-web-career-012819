require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

Joshua_gluck = Student.new("Joshua Gluck")
Jordan_gluck = Student.new("Jordan Gluck")
Rich_gluck = Student.new("Rich Gluck")
Suzi_gluck = Student.new("Suzi Gluck")

Mr_A = Instructor.new("Mr. A")
Mr_B = Instructor.new("Mr. B")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
