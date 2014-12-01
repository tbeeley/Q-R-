class Quarter

	def initialize(common_stock_positions, ending)
		@common_stock_positions = common_stock_positions
		@ending = ending
	end

	attr_accessor :common_stock_positions, :ending

	def total_value
		common_stock_positions.values.inject {|a, b| a + b}
	end

end
