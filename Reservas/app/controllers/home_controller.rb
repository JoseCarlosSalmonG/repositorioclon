class HomeController < ApplicationController
  def index
    @course = Course.all
    @entree = Entree.all
    
  end
end
