class StaticPagesController < ApplicationController

  # GET /static_pages
  # GET /static_pages.json
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
  
  end
  
  def buddy_page
    
  end

  def buddies

  end

  def schedule

  end

 
  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def static_page_params
      params[:static_page]
    end
end
