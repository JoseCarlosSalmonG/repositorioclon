class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @course = Course.all
    @entree = Entree.all
    
  end
end
