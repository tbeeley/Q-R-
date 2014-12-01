class Quarter

	def initialize(common_stock_positions, date)
		@common_stock_positions = common_stock_positions
		@date = date
	end

	attr_accessor :common_stock_positions, :date

	def total_value
		common_stock_positions.values.inject {|a, b| a + b}
	end

end
