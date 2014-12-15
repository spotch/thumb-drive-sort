require_relative 'file_lister.rb'
require_relative 'file_copier.rb'

if __FILE__ == $0 then
	if ARGV.length != 2 then
		puts "usage: script <source> <destination>"
		exit
	end
	source = ARGV[0]
	destination = ARGV[1]

	files = FileLister.new.listFiles(source)
	FileCopier.new.copyFiles(files, destination)
end