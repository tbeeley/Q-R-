class Quarter

	def initialize(common_stock_positions)
		@common_stock_positions = common_stock_positions
	end

	attr_accessor :common_stock_positions

	def total_value
		common_stock_positions.values.inject {|a, b| a + b}
	end

	def biggest_positions(n)
		common_stock_positions.sort_by {|k, v| - v}.first n
	end

	def new_stocks(previous_quarter)
		common_stock_positions.reject {|k, _| previous_quarter.common_stock_positions.include? k }
	end

end
