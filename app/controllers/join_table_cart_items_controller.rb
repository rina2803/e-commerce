class JoinTableCartItemsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_cart, only: [:create]
  def index

  end

  def show
  end

  def new
  end

  def create
    item = Item.find(params['data_value'])
    @cart = Cart.find_by(user_id:current_user.id)
    if_item_exist = @cart.join_table_cart_items.find_by(item_id: item.id)
    
    if !if_item_exist
      @join_table_cart_items = @cart.join_table_cart_items.new(item: item)
      respond_to do |format|
        if @join_table_cart_items.save
          format.html {redirect_to @join_table_cart_items.cart, notice: 'Item a été créer avec succés'}
          format.json { render :show, status: :created, location: @join_table_cart_items}
        end
      end
    else
         
    end  
    
    
  end

  def update
  end

  def destroy
    item = JoinTableCartItem.find(params[:id])
    item.destroy
    @cart = Cart.find_by(user_id:current_user.id)
    redirect_to cart_path(@cart.id)
  end

  def edit
  end

  private

  def set_cart
    @cart = Cart.find_by(id: session[:cart_id]) || Cart.create
      session[:cart_id] ||= @cart.id
  end

end
