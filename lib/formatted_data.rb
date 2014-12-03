class FormattedData

	def initialize(text_file)
		read_file(text_file)
		@contents = contents
		convert_contents_to_csp
		@common_stock_positions = {}
	end

	attr_accessor :contents, :common_stock_positions

	def read_file(text_file)
		file = File.open(text_file, "r")
		@contents = file.read
	end

	def convert_contents_to_csp
		#This method would take the new string from the txt file. It would convert this string into the Hash as seen in the Quarter class for analysis.
	end

end
