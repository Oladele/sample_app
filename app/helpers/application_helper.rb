module ApplicationHelper

	#Returns the full title on a per-page basis.
	def full_title(page_title)
		base_title = "Ruby on Rails Tutorial Sample App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	#Returns array of 7 dates starting with Monday prior to date passed
	def week_of(date)
		week = []
		day = date.beginning_of_week
		week << day
			1.upto(6) do
				day = day.next_day
				week << day 
			end
      return week
  end

end
