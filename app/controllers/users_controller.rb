class UsersController < ApplicationController


  private


  # Never trust parameters from the scary internet, only allow the white list through.
  def use_params
    params.require(:faq).permit(:email)
  end
end
