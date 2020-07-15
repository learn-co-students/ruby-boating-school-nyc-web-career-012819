require "pry"
require_relative "./student.rb"
require_relative "./boatingtest.rb"
require_relative "./instructor.rb"

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
tekhmis_3al_autostrade = spongebob.add_boating_test("tekhmis 555", "pending", puff)
techfit = spongebob.add_boating_test("Chaffit 101", "passed", puff)
no_crashing = spongebob.add_boating_test("Don't Crash 102", "pending", puff)
tekhmis_3al_autostrade = spongebob.add_boating_test("tekhmis 666", "passed", puff)
techfit = spongebob.add_boating_test("Chaffit 102", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)



binding.pry
