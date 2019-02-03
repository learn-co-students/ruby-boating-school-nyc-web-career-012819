class Student

	attr_reader :first_name

	@@all = []

	def initialize(first_name)
		@first_name = first_name
		@@all << self
	end

	def add_boating_test(test_name, status, instructor)
		BoatingTest.new(self, test_name, status, instructor)
	end

	def grade_percentage
		passed_tests.length.to_f / tests.length.to_f
	end

	def tests
		BoatingTest.all.select { |test| test.student == self }
	end

	def passed_tests
		tests.select { |test| test.status == "passed" }
	end

	def self.find_student(first_name)
		@@all.find { |student| student.first_name == first_name }
	end

	def self.all
		@@all
	end

end
