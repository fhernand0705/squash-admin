class PagesController < ApplicationController
  def home
    render :layout => false
    @user = User.new
  end

end
