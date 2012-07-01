class HomeController < ApplicationController

  before_filter :authenticate_cp_user!

  def index
    render :text => "This is the home contoller, index method"
  end

end
