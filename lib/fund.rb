class Fund

	def initialize(first_q, second_q, third_q, fourth_q)
		@quarters = [first_q, second_q, third_q, fourth_q]
	end

	attr_accessor :quarters

	def show_performance
		quarters.map {|quarter| quarter.total_value}
	end

	def compare_quarters
		"2nd Quarter #{quarters[1].comparison1(quarters[0])}, 3rd Quarter #{quarters[2].comparison1(quarters[1])}, 4th Quarter #{quarters[3].comparison1(quarters[2])}"
	end

end
