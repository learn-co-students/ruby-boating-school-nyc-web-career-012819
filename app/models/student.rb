class Student

	attr_reader :first_name

	@@all = []

	def initialize(first_name)
		@first_name = first_name
		@@all << self
	end

	def add_boating_test(test_name, test_status, instructor)
		BoatingTest.new(self, test_name, test_status, instructor)
	end

	def grade_percentage
		self.passed_tests.length.to_f / self.tests.length.to_f
	end

	def tests
		BoatingTest.all.select { |test| test.student == self }
	end

	def passed_tests
		self.tests.select { |test| test.test_status == "passed" }
	end

	def self.find_student(first_name)
		@@all.find { |student| student.first_name == first_name }
	end

	def self.all
		@@all
	end

end
