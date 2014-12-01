class Fund

	def initialize
		@quarters = []
	end

	attr_accessor :quarters

	def add(quarter)
		if quarters.count < 4
			@quarters << quarter
		end
	end

end
