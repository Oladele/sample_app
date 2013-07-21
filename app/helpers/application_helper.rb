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

  def mdySTRING_to_HASH(mdy)
  	arr = mdy.split('/')
  	{ year: arr[2].to_i, month: arr[0].to_i, day: arr[1].to_i }
  end

  def mdySTRING_to_DATE (mdyStr)
    date_selected_HASH = mdySTRING_to_HASH(mdyStr)
    Date.new(date_selected_HASH[:year],
                          date_selected_HASH[:month],
                          date_selected_HASH[:day]
            )
  end

end
