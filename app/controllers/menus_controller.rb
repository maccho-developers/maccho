class MenusController < ApplicationController
  before_action :set_menu, :only => [:show, :destroy]
  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render action: "new"
    end
  end

  def show
  end

  def destroy
    @menu.destroy
    redirect_to root_path
  end

  private
    def set_menu
      @menu = Menu.find(params[:id])
    end

    def menu_params
      params.require(:menu).permit(:content,:media)
    end
end
