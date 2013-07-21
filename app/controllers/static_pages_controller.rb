
include ApplicationHelper

class StaticPagesController < ApplicationController
  def home
  	if signed_in?
  		@micropost = current_user.microposts.build
  		@feed_items = current_user.feed.paginate(page: params[:page])
      @week_days =  params[:date_selected].nil? ?
                    week_of(Date.today) :
                    week_of(mdySTRING_to_DATE(params[:date_selected]))
      @workouts = current_user.workouts
      @AR = Workout.where("user_id = ?", current_user.id)
      @date_selected = params[:date_selected]
      

      respond_to do |format|
        format.html
        format.js
      end
      
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
