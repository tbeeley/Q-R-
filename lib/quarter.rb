class Quarter

	def initialize(common_stock_positions)
		@common_stock_positions = common_stock_positions
	end

	attr_accessor :common_stock_positions

	def total_value
		common_stock_positions.values.inject(:+)
	end

	def biggest_positions(number)
		common_stock_positions.sort_by {|company, value| - value}.first number
	end

	def comparison(previous_quarter)
		total_value > previous_quarter.total_value ? 'growth' : 'loss'
	end

	def new_stocks(previous_quarter)
		common_stock_positions.reject {|company, _| previous_quarter.common_stock_positions.include? company }
	end

end
