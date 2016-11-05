class TopController < ApplicationController
  def index
    @menus = Menu.all
    @comments = Comment.all
    @users = User.all
  end
end
