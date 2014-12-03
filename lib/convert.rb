class Convert

	def initialize(text_file)
		@contents = contents
		read_file(text_file)
	end

	attr_accessor :contents

	def read_file(text_file)
		file = File.open(text_file, "r")
		@contents = file.read
	end

	def file_open(text_file)
		File.open("sample.txt").readlines.each do |line|
			puts line
		end
	end

end
