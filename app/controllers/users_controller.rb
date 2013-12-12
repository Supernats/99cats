class UsersController < ApplicationController

  def index

  end

  def show

  end

  def new
    unless logged_in?
      render :new
    end
  end

  def create
    User.create(params[:user])
  end

  def edit

  end

  def update

  end

  def destroy

  end

end