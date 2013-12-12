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
    @cat = Cat.find(params[:id])

    render :edit
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update_attributes(params[:cat])
      redirect_to cat_url(@cat)
    else
      render :json => @cat.errors.full_messages
    end
  end

  def destroy

  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    if Cat.create(params[:cat])
      redirect_to cats_url(@cat)
    else
      render :json => @cat.errors.full_messages
    end
  end

end