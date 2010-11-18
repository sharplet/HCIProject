module NavbarHelper
	def navbar(
		page,
		list = 'ul',
		items = [
			['/index.html', '/phase1/index.html', '/phase2/index.html', '/phase3/index.html', '/phase4/index.html', '/phase5/index.html'],
			['Home', 'Phase 1', 'Phase 2', 'Phase 3', 'Phase 4', 'Phase 5'] 
		])

		nav = ''
	  items[1].each_index do |i|
			css_class = Array.new
	    active = ''
			last = ''
	    label = items[1][i]

	    if (page == items[0][i])
	      # active = ' class="active"'
				css_class << "active"
	    else
	      label = "<a href=\"#{items[0][i]}\">#{label}</a>"
	    end

			unless (items[1][i] == items[1].last)
				css_class << "not-last"
			end
			
			unless css_class.empty?
				css_class_string = " class=\"#{css_class.join(" ")}\""
			end

			nav += "  <li#{css_class_string}>#{label}</li>\n"
	  end

		"<#{list}>\n#{nav}</#{list}>"
	end
end
