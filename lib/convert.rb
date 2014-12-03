class Convert

	def initialize(text_file)
		@text_file = text_file
		read_file(text_file)
		@contents = contents
		@common_stock_positions = {}
	end

	attr_accessor :contents, :common_stock_positions, :text_file

	def read_file(text_file)
		file = File.open(text_file, "r")
		@contents = file.read
	end

	def show_contents
		puts @contents
	end

end
