class EntreesController < ApplicationController
  before_action :set_entree, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @entrees = Entree.all
    respond_with(@entrees)
  end

  def show
    respond_with(@entree)
  end

  def new
    @entree = Entree.new
    respond_with(@entree)
  end

  def edit
  end

  def create
    @entree = Entree.new(entree_params)
    @entree.save
    respond_with(@entree)
  end

  def update
    @entree.update(entree_params)
    respond_with(@entree)
  end

  def destroy
    @entree.destroy
    respond_with(@entree)
  end

  private
    def set_entree
      @entree = Entree.find(params[:id])
    end

    def entree_params
      params.require(:entree).permit(:name, :price, :stock)
    end
end
