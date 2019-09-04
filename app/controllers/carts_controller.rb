class CartsController < ApplicationController
    before_action :set_cart, only: [:show]
 
  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find(params[:id])
    def sum
      sum = 0
        for i in (0..@cart.join_table_cart_items.length-1)
          sum = sum + @cart.join_table_cart_items[i].item.price
        end
      return sum 
    end
    @sum = sum
  end

  def new
  end

  def create
    @item = Item.find(params[:item_id])
    @join_table_cart_items = @cart.join_table_cart_item.new(item: item)
  end

  def update
  end

  def destroy
  end

  def edit
  
  end
  
  private

    def set_cart
      @cart = Cart.find_by(id: session[:cart_id]) || Cart.create
        session[:cart_id] ||= @cart.id
    end
  
end

