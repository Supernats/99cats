class CatsController < ApplicationController

  def index
    @cats = Cat.all

    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def new

  end

  def create

  end

end