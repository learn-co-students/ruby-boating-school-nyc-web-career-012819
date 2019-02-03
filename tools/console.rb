require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



##### students #####
michael = Student.new("Michael")
matthew = Student.new("Matthew")
dana = Student.new("Dana")


##### instructors #####
shannon = Instructor.new("Shannon")
carl = Instructor.new("Carl")



##### boating tests #####

atlanic_speed_control = BoatingTest.new(michael, "atlanic_speed_control", "fail", shannon)


##### methods that can add to #####
michael.add_boating_test("pacific wave avoidance", "passd", carl)


dana.add_boating_test("pacific wave avoidance", "pass", shannon)

shannon.pass_student(michael, "atlanic_speed_control")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
