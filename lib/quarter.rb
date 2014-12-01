class Quarter

	def initialize(common_stock_positions)
		@common_stock_positions = common_stock_positions
	end

	attr_accessor :common_stock_positions

	def total_value
		common_stock_positions.values.inject {|a, b| a + b}
	end

	def biggest_positions
		common_stock_positions.sort_by {|k, v| - v}.first 1
		#Change this to 5 later on, sort array into
	end

end
