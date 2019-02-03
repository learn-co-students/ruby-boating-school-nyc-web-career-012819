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
rana = Student.new("Rana")


##### instructors #####
shannon = Instructor.new("Shannon")
carl = Instructor.new("Carl")
lucy = Instructor.new("Lucy")



##### boating tests #####

atlantic_speed_control = BoatingTest.new(michael, "atlantic_speed_control", "fail", shannon)

new_jersey_water_colider = BoatingTest.new(rana, "new_jersey_water_colider", "fail", carl)

new_jersey_water_colider = BoatingTest.new(matthew, "new_jersey_water_colider", "fail", carl)

new_jersey_water_colider = BoatingTest.new(michael, "new_jersey_water_colider", "fail", carl)

south_pacific_tsunami_jumpper = BoatingTest.new(rana, "south_pacific_tsunami_jumpper", "pass", lucy)

south_pacific_tsunami_jumpper = BoatingTest.new(matthew, "south_pacific_tsunami_jumpper", "fail", shannon)

south_pacific_tsunami_jumpper = BoatingTest.new(michael, "south_pacific_tsunami_jumpper", "fail", carl)


parrallel_docking = BoatingTest.new(rana, "parrallel_docking", "pass", carl)

parrallel_docking = BoatingTest.new(matthew, "parrallel_docking", "pass", carl)


parrallel_docking = BoatingTest.new(michael, "parrallel_docking", "pass", carl)


##### methods that can add to #####
michael.add_boating_test("pacific wave avoidance", "pass", carl)


rana.add_boating_test("pacific wave avoidance", "pass", shannon)

shannon.pass_student(michael, "atlantic_speed_control")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
