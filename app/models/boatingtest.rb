class BoatingTest

	attr_reader :student, :name, :status

	@@all = []

	def initialize(student, name, status, instructor)
		@student = student
		@name = name
		@status = status
		@instructor = instructor
		@@all << self
	end

	def set_status(status)
		@status = status
	end

	def self.all
		@@all
	end

end
