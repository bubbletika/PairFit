include WoopraRailsSDK

class StaticPagesController < ApplicationController

  # GET /static_pages
  # GET /static_pages.json
  layout "static_page"

  def home
    @user = nil
  end
  
  def user_profile
    
  end
  
  def user_profile2
    
  end
  
  def find_buddy
    
  end
  
  def search_results
    woopra = WoopraTracker.new(request)
    woopra.config({
      domain: "pairfit.herokuapp.com",
      idle_timeout: 15000})
    woopra.track("a_version_time_elapsed")

    @woopra_code = woopra.js_code
    @users = User.all
  end
  
  def buddy_page
    
  end

  def buddies

  end

  def schedule

  end

  def dashboard

  end

  def search_results_B
    woopra = WoopraTracker.new(request)
    woopra.config({
      domain: "pairfit.herokuapp.com",
      idle_timeout: 15000})
    woopra.track("b_version_time_elapsed")

    @woopra_code = woopra.js_code
    @users = User.all
  end

 
  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def static_page_params
      params[:static_page]
    end
end
