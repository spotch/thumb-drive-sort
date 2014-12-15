class FileLister
	def listFiles(path)
		Dir.glob("#{path}/**/*").select { |item|
			File.file? item
		}
	end
end

if __FILE__ == $0 then
	puts FileLister.new.listFiles("test_dir")
end