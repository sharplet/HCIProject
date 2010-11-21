module FileHelper
	def path_without_basename(path)
		match_basename = Regexp.new "#{Regexp.escape(File.basename(path))}$"
		path.gsub(match_basename, '')
	end
	
	def path_without_extension(path)
		match_extname = Regexp.new "#{Regexp.escape(File.extname(path))}$"
		path.gsub(match_extname, '')
	end
	
	def render_markdown(file)
		current_dir = path_without_basename('src/pages'+current_page)
		file = current_dir + file
		if File.extname(file) != "text"
			file += ".text"
		end
		File.open(file).readlines
	end
	
	def link_to(title, href="./#{urlify(title)}.html")
		"<a href=\"#{href}\" title=\"#{title}\">#{title}</a>\n"
	end
end
