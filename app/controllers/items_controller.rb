class ItemsController < ApplicationController

   def index
    @items = Item.all
    puts @items
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  def edit
  end

end