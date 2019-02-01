class Instructor

	@@all = []

	def initialize(name)
		@name = name
	end

	def find_test(student, test_name)
		student.tests.find { |test| test.name == test_name }
	end

	def pass_student(student, test_name)
		test = self.find_test(student, test_name)

		if test != nil
			test.status = "passed"
		else
			BoatingTest.new(student, test_name, "passed", self)
		end
	end

	def fail_student(student, test_name)
		test = self.find_test(student, test_name)

		if test != nil
			test.status = "failed"
		else
			BoatingTest.new(student, test_name, "failed", self)
		end
	end

	def self.all
		@@all
	end

end
