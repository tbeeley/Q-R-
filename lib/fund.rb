class Fund

	def initialize(quarter1, quarter2, quarter3, quarter4)
		@quarters = [quarter1, quarter2, quarter3, quarter4]
	end

	attr_accessor :quarters

	def show_performance
		quarters.map {|quarter| quarter.total_value}
	end

	def comparison(x, y)
		if x > y
			return 'growth'
		else
			return 'loss'
		end
	end

	def compare_quarters
		"2nd Quarter #{comparison(quarters[0].total_value, quarters[1].total_value)}, 3rd Quarter #{comparison(quarters[1].total_value, quarters[2].total_value)}, 4th Quarter #{comparison(quarters[2].total_value, quarters[3].total_value)}"
	end

	def new_positions(xquarter, yquarter)
		new_stocks = yquarter.common_stock_positions.reject {|k, _| xquarter.common_stock_positions.include? k }
	end

end
