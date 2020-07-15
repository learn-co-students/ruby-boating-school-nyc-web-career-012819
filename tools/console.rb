require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "passed", puff)
no_crashingg = spongebob.add_boating_test("Don't Crash 102", "passed", puff)
no_crashinga = spongebob.add_boating_test("Don't Crash 103", "failed", puff)
no_crashingb = spongebob.add_boating_test("Don't Crash 104", "passed", puff)
no_crashingc = spongebob.add_boating_test("Don't Crash 105", "failed", puff)
no_crashinge = spongebob.add_boating_test("Don't Crash 106", "failed", puff)
no_crashingf = spongebob.add_boating_test("Don't Crash 107", "passed", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
