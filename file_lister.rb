class FileLister
	def initialize(path)
		@path = path
	end

	def listFiles
		puts Dir.glob("#{@path}/**/*").select { |item|
			File.file? item
		}
	end
end

if __FILE__ == $0 then
	FileLister.new("test_dir").listFiles
end