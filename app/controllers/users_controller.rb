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
    @user = User.create(params[:user])
    if @user
      login_user!(@user)
    else
      flash[:errors] = "Error creating user."
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

end