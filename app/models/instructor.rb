class Instructor

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def find_test(student, test_name)
		student.tests.find { |test| test.name == test_name }
	end

	def pass_student(student, test_name)
		result = self.find_test(student, test_name)
		result != nil ? result.set_status("passed") : BoatingTest.new(student, test_name, "passed", self)
	end

	def fail_student(student, test_name)
		result = self.find_test(student, test_name)
		result != nil ? result.set_status("failed") : BoatingTest.new(student, test_name, "failed", self)
	end

	def self.all
		@@all
	end

end
