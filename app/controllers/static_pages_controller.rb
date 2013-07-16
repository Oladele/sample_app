
include ApplicationHelper

class StaticPagesController < ApplicationController
  def home
  	if signed_in?
  		@micropost = current_user.microposts.build
  		@feed_items = current_user.feed.paginate(page: params[:page])
      @string = (params[:myDatePicker])
      if @string == nil
        @week_days = week_of(Date.today)
      else
        @week_days = week_of(Date.strptime(@string, '%m/%d/%Y'))
      end
  	end
  end

  def help
  end

  def about
  end

  def contact
  end    
    
  
end
