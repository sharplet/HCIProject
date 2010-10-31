module NavbarHelper
	def navbar(page)
	  items = ['/index.html', '/phase1/index.html', '/phase2/index.html', '/phase3/index.html', '/phase4/index.html', '/phase5/index.html']
		labels = { '/index.html' => 'Home', '/phase1/index.html' => 'Phase 1', '/phase2/index.html' => 'Phase 2', '/phase3/index.html' => 'Phase 3', '/phase4/index.html' => 'Phase 4', '/phase5/index.html' => 'Phase 5' }
	  navbar = items.collect do |i|
	    active = ''
	    label = labels[i]
	    if (page == i)
	      active = ' class="active"'
	    else
	      label = "<a href=\"#{i}\">#{labels[i]}</a>"
	    end
	    "  <li#{active}>#{label}</li>\n"
	  end
		"<ul>\n#{navbar}</ul>"
	end
end
