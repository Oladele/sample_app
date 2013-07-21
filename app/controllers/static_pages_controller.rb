
include ApplicationHelper

class StaticPagesController < ApplicationController
  def home
  	if signed_in?
  		@micropost = current_user.microposts.build
  		@feed_items = current_user.feed.paginate(page: params[:page])
      @week_days = week_of(Date.today)
      @workouts = current_user.workouts
      @AR = Workout.where("user_id = ?", current_user.id)
      
      #Partial implementation of non-JS week/date selector 
      #used form_tag and submit_tag to post http GET
      #below implementation repsonded to http GET
      #worked but was unable to use respond_to block
      #to allow JS version to ALSO work.

      #@string = (params[:myDatePicker])
      #if @string == nil
      #  @week_days = week_of(Date.today)
      #else
      #  @week_days = week_of(Date.strptime(@string, '%m/%d/%Y'))
      #end
  	end
  end

  def help
  end

  def about
  end

  def contact
  end    
    
  
end
