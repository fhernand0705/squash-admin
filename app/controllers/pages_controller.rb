class PagesController < ApplicationController
  def entry
    @user = User.new
    render :layout => false
  end

end
