class Fund

	def initialize(quarter1, quarter2, quarter3, quarter4)
		@quarters = [quarter1, quarter2, quarter3, quarter4]
	end

	attr_accessor :quarters

	def show_performance
		quarters.map {|quarter| quarter.total_value}
	end

end
