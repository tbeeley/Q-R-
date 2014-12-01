class Quarter

	def initialize(common_stock_positions)
		@common_stock_positions = common_stock_positions
	end

	attr_accessor :common_stock_positions

	def total_value
		common_stock_positions.values.inject {|a, b| a + b}
	end

end
