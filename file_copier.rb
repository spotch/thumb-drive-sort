require 'fileutils'

class FileCopier
	def copyFiles(srcs, dest)
		srcs.each { |file|
			full_destination = File.join(dest, file)
			destination_path = File.dirname(full_destination)
			FileUtils.mkdir_p(destination_path, :verbose => true)
			FileUtils.cp(file, full_destination, :verbose => true)
		}
	end
end

if __FILE__ == $0 then
	FileCopier.new.copyFiles(["test_dir/a_file.txt", "test_dir/b_file.txt", "test_dir/a_dir/aa_file.txt"], "dest_dir/")
end